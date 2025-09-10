import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';

part 'notification_state.freezed.dart'; 

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(false) bool isLoading,
    @Default([]) List<AppNotification> notifications,
    @Default('') String errorMessage,
    @Default(0) int unreadCount,
    @Default(false) bool isSyncing,
  }) = _NotificationState;

  factory NotificationState.initial() => const NotificationState();
}