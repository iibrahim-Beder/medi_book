import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:medi_book/core/navigation/navigation_key_service.dart';
import 'package:medi_book/core/navigation/notification_navigator.dart';
import 'package:medi_book/core/networking/api_constants.dart';
import 'package:medi_book/features/notifications/data/datasources/notification_local_datasource.dart';
import 'package:medi_book/features/notifications/data/mappers/notification_mapper.dart';
import 'package:medi_book/features/notifications/data/models/notification_model.dart';
import 'package:medi_book/features/notifications/domain/utils/show_flash_notification.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/appNotifications_cubit.dart';
import 'package:flutter/widgets.dart';

/// Handles Firebase Cloud Messaging (FCM) setup, foreground/background message
/// processing, and local notification presentation.
///
/// This service connects FCM with the local notification system,
/// manages notification tap navigation, and communicates with the app's
/// notification Cubit for state updates.
class FirebaseNotificationService {
  static final _messaging = FirebaseMessaging.instance;
  static final _localNotifications = FlutterLocalNotificationsPlugin();

  /// Initializes Firebase Messaging and local notification handling.
  ///
  /// This sets up:
  /// - Local notification plugin
  /// - Background message handler
  /// - FCM token logging
  /// - Foreground and background notification listeners
  ///
  /// You must call `WidgetsFlutterBinding.ensureInitialized()` before this.
  static Future<void> init(
    NotificationCubit cubit,
    NotificationLocalDataSource localDataSource,
  ) async {
    await _initLocalNotifications();

    // Handle messages when app is in background or terminated
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Fetch and log the device's FCM token
    final token = await _messaging.getToken();
    print('FCM Token: $token');

    // Handle messages while app is open (foreground)
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      final title =
          message.notification?.title ?? message.data['title'] ?? 'No Title';
      final body =
          message.notification?.body ?? message.data['message'] ?? 'No Message';

      print('Notification received - title: $title');
      print('Notification message: $body');

      final isForeground =
          WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed;

      if (isForeground) {
        _showLowPriorityNotification(title, body);
        showInAppNotificationUsingKey();
      } else {
        _showHighPriorityNotification(title, body);
      }

      _handleIncomingData(message.data, cubit, localDataSource);
    });

    // Handle when user taps the notification while app is in background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Notification tapped (backgrounded): ${message.data}');
      _handleIncomingData(message.data, cubit, localDataSource);
      _handleNotificationNavigation(message.data);
    });
  }

  /// Handles the case when the app is opened from a terminated state
  /// via tapping a Firebase notification.
  ///
  /// The delay helps avoid a black screen and gives the app time to initialize properly.
  ///
  static Future<void> handleInitialMessage(
    NotificationCubit cubit,
    NotificationLocalDataSource localDataSource,
  ) async {
    // Try to get the message that opened the app from a terminated state
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      print(
          'App opened from terminated state via notification: ${initialMessage.data}');

      // Process the incoming notification data (e.g. update state, save locally)
      _handleIncomingData(initialMessage.data, cubit, localDataSource);

      // Wait a short duration before navigating, to ensure smooth UI
      await Future.delayed(const Duration(milliseconds: 500));

      // Navigate to the relevant screen based on the notification data
      _handleNotificationNavigation(initialMessage.data);
    }
  }

  /// Initializes the local notifications plugin.
  ///
  /// This method sets up Android-specific initialization.
  static Future<void> _initLocalNotifications() async {
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const settings = InitializationSettings(android: androidSettings);
    await _localNotifications.initialize(settings);
  }

  /// Handles navigation logic based on notification data.
  ///
  /// Requires a valid `navigatorKey` to be set in the app.
  static void _handleNotificationNavigation(Map<String, dynamic> data) {
    final context = navigatorKey.currentContext;
    if (context == null) {
      print('No navigator context available');
      return;
    }

    final target = data['target'];
    if (target != null) {
      NotificationNavigator.navigate(context, target);
    } else {
      print('No target found in notification data');
    }
  }

  /// Displays a high-priority notification when the app is in the background.
  static void _showHighPriorityNotification(String title, String body) {
    _localNotifications.show(
      title.hashCode,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'high_priority_channel',
          'High Priority Notifications',
          channelDescription: 'Shown when app is not in foreground',
          importance: Importance.max,
          priority: Priority.high,
          icon: '@mipmap/ic_launcher',
        ),
      ),
    );
  }

  /// Displays a low-priority notification while the app is in the foreground.
  static void _showLowPriorityNotification(String title, String body) {
    _localNotifications.show(
      title.hashCode,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'low_priority_channel',
          'Low Priority Notifications',
          channelDescription: 'Used when app is in foreground',
          importance: Importance.low,
          priority: Priority.low,
          icon: '@mipmap/ic_launcher',
        ),
      ),
    );
  }

  /// Parses raw FCM data, maps it to a `NotificationModel`, and updates state.
  ///
  /// Saves the notification to local storage and pushes it to the Cubit.
  ///
  /// Ignores invalid data or missing fields.
  static void _handleIncomingData(
    Map<String, dynamic> data,
    NotificationCubit cubit,
    NotificationLocalDataSource localDataSource,
  ) async {
    if (data.isEmpty) return;

    final cleanedData = <String, dynamic>{};
    data.forEach((key, value) {
      cleanedData[key.trim()] = value;
    });

    print('Cleaned Notification data: $cleanedData');

    try {
      final rawId = cleanedData['id']?.toString().trim() ?? '';
      final id = int.tryParse(rawId);
      if (id == null) {
        print('Invalid id: "$rawId"');
        return;
      }

      final type = cleanedData['type']?.toString().trim() ?? '';
      final title = cleanedData['title']?.toString().trim() ?? '';
      final message = cleanedData['message']?.toString().trim() ?? '';
      final target = cleanedData['target']?.toString().trim();

      final isReadRaw = cleanedData['isRead'];
      final isRead = isReadRaw is bool
          ? isReadRaw
          : isReadRaw?.toString().toLowerCase() == 'true';

      final createdAtRaw = cleanedData['createdAt']?.toString().trim() ?? '';
      final createdAt = DateTime.tryParse(createdAtRaw);
      if (createdAt == null) {
        print('Invalid createdAt: "$createdAtRaw"');
        return;
      }

      DateTime? readAt;
      if (cleanedData['readAt'] != null &&
          cleanedData['readAt'].toString().toLowerCase() != 'null') {
        readAt = DateTime.tryParse(cleanedData['readAt'].toString().trim());
      }

      // Static image asset, can be dynamic based on backend support
      final svgUrl = "uploads/svg/appointment_success.svg";

      final model = NotificationModel(
        id: id,
        type: type,
        title: title,
        message: message,
        isRead: isRead,
        createdAt: createdAt,
        readAt: readAt,
        svgUrl: svgUrl,
        target: target,
      );

      final entity =
          model.toEntity(ApiConstants.baseUrl.replaceAll('/Api/v1', ''));

      // Save to local storage (Hive or similar)
      await localDataSource.addOrUpdateNotifications([entity]);

      // Push into app state
      cubit.addOrUpdateNotification(entity);

      print('Notification added to Cubit with target: $target');
    } catch (e) {
      print('Error parsing notification data: $e');
    }
  }

  /// Shows an in-app flash-style notification using `navigatorKey`.
  ///
  /// Displays a temporary visual indicator (e.g., using flushbar or snackbar)
  /// if context is available.
  static void showInAppNotificationUsingKey() {
    final context = navigatorKey.currentContext;
    if (context != null) {
      showInAppNotification(context);
    } else {
      print('Navigator context is null');
    }
  }
}

/// Top-level background message handler (required by FCM).
///
/// Handles push messages when app is terminated or in background isolate.
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('Background message received: ${message.messageId}');
  print('Background message data: ${message.data}');
}
