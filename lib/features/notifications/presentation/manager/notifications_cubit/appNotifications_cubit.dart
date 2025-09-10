import 'package:bloc/bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:medi_book/features/notifications/data/datasources/notification_local_datasource.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';
import 'package:medi_book/features/notifications/domain/repo/notifications_repo.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/notification_state.dart';
import 'package:permission_handler/permission_handler.dart';

/// A Cubit that manages app notifications.
///
/// This class handles:
/// - Loading notifications from local and remote sources
/// - Updating notification read status
/// - Tracking unread count
/// - Syncing with backend
/// - Showing local push notifications
class NotificationCubit extends Cubit<NotificationState> {
  /// Repository for fetching and updating notifications from the backend.
  final NotificationsRepo notificationsRepo;

  /// Data source for local notification persistence.
  final NotificationLocalDataSource notificationLocalDataSource;

  /// Plugin used to show native local notifications.
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  /// Internal storage to avoid duplicate notifications and improve performance.
  static final Map<int, AppNotification> notificationMap = {};

  /// Creates a new [NotificationCubit] with required dependencies.
  NotificationCubit(
    this.notificationsRepo,
    this.notificationLocalDataSource,
    this.flutterLocalNotificationsPlugin,
  ) : super(NotificationState.initial());

  /// Loads notifications from both local storage and remote API.
  ///
  /// Emits loading state first. If local notifications exist, they are loaded immediately.
  /// Then attempts to sync with the server. If remote notifications differ from local ones,
  /// updates internal storage and emits new state with updated list and unread count.
  Future<void> loadNotifications() async {
    emit(state.copyWith(isLoading: true));

    final localNotifications =
        await notificationLocalDataSource.getAllNotifications();

    if (localNotifications.isNotEmpty) {
      for (final n in localNotifications) {
        notificationMap[n.id] = n;
      }
      emit(state.copyWith(
        isLoading: false,
        isSyncing: true,
        notifications: notificationMap.values.toList(),
      ));
    }

    final result = await notificationsRepo.getPatientNotifications(1); // TODO: replace hardcoded ID

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isSyncing: false,
          errorMessage: 'Failed to load notifications',
        ));
      },
      (remoteNotifications) {
        final isDifferent =
            !_areNotificationsEqual(remoteNotifications, notificationMap.values.toList());

        if (isDifferent) {
          for (final n in remoteNotifications) {
            notificationMap[n.id] = n;
          }
          final unreadCount = _calculateUnreadCount(notificationMap.values.toList());
          emit(state.copyWith(
            isLoading: false,
            isSyncing: false,
            notifications: notificationMap.values.toList(),
            unreadCount: unreadCount,
          ));
        } else {
          emit(state.copyWith(isSyncing: false));
        }
      },
    );
  }

  /// Adds or updates a single notification.
  ///
  /// Also persists the change locally and emits the updated list and unread count.
  Future<void> addOrUpdateNotification(AppNotification notification) async {
    notificationMap[notification.id] = notification;

    final unreadCount = notificationMap.values.where((n) => !n.isRead).length;

    await notificationLocalDataSource.addOrUpdateNotifications([notification]);

    emit(state.copyWith(
      notifications: notificationMap.values.toList(),
      unreadCount: unreadCount,
    ));
  }

  /// Marks a specific notification as read.
  ///
  /// Updates both local and remote sources. If the notification exists locally,
  /// marks it as read and emits updated unread count.
  Future<void> markNotificationAsRead(int notificationId) async {
    final dateTime = DateTime.now();

    await notificationLocalDataSource.updateNotificationById(
      id: notificationId,
      isRead: true,
      readAt: dateTime,
    );

    final updated = notificationMap[notificationId]?.copyWith(
      isRead: true,
      readAt: dateTime,
    );

    if (updated != null) {
      notificationMap[notificationId] = updated;
    }

    final unreadCount = notificationMap.values.where((n) => !n.isRead).length;

    emit(state.copyWith(
      notifications: notificationMap.values.toList(),
      unreadCount: unreadCount,
    ));

    try {
      await notificationsRepo.markNotificationAsRead(notificationId, dateTime);
    } catch (_) {
      // Error ignored silently; could be improved with logging
    }
  }

  /// Marks all notifications as read.
  ///
  /// Updates in-memory store, emits updated unread count and tries to sync with server.
  Future<void> markAllAsRead() async {
    final now = DateTime.now();

    final updatedNotifications = notificationMap.map((key, value) {
      return MapEntry(key, value.copyWith(isRead: true, readAt: now));
    });

    notificationMap
      ..clear()
      ..addAll(updatedNotifications);

    emit(state.copyWith(
      notifications: notificationMap.values.toList(),
      unreadCount: 0,
    ));

    try {
      await notificationsRepo.markAllNotificationsAsRead(now);
    } catch (_) {
      // Error ignored silently; could be improved with logging
    }
  }

  /// Removes a notification by ID from local in-memory cache.
  ///
  /// Emits updated state after removal.
  void removeNotification(int id) {
    notificationMap.remove(id);
    final unreadCount = notificationMap.values.where((n) => !n.isRead).length;
    emit(state.copyWith(
      notifications: notificationMap.values.toList(),
      unreadCount: unreadCount,
    ));
  }

  /// Clears all notifications from local in-memory cache.
  ///
  /// Emits a new empty state.
  void clearNotifications() {
    notificationMap.clear();
    emit(state.copyWith(notifications: [], unreadCount: 0));
  }

  /// Requests permission from the user to show system notifications.
  ///
  /// This is a static method because it's unrelated to state.
  static Future<void> requestNotificationPermission() async {
    final status = await Permission.notification.status;
    if (!status.isGranted) {
      await Permission.notification.request();
    }
  }

  /// Displays a local push notification to the user.
  ///
  /// Currently hardcoded for demo purposes. Should be updated to accept parameters or localization.
  Future<void> showLocalNotification() async {
    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
      'appointment_channel',
      'Appointment Notifications',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      'Appointment Confirmed!',
      'Your appointment with Dr. Ahmed is scheduled for Thursday at 10 AM.',
      notificationDetails,
    );
  }

  /// Calculates and returns the number of unread notifications from a list.
  int _calculateUnreadCount(List<AppNotification> notifications) {
    return notifications.where((n) => !n.isRead).length;
  }

  /// Compares two lists of notifications by their IDs to check if they are the same.
  ///
  /// Note: This does not compare content — only IDs.
  bool _areNotificationsEqual(List<AppNotification> a, List<AppNotification> b) {
    if (a.length != b.length) return false;

    final aIds = a.map((n) => n.id).toSet();
    final bIds = b.map((n) => n.id).toSet();

    return aIds.containsAll(bIds) && bIds.containsAll(aIds);
  }
}
