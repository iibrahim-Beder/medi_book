import 'package:freezed_annotation/freezed_annotation.dart';

part 'appNotification.freezed.dart';
@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required int id,
    required String type,
    required String title,
    required String message,
    required bool isRead,
    required DateTime createdAt,
    DateTime? readAt,
    required String svgUrl,
    String? target,
  }) = _Appnotification;
}
