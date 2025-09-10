import 'package:medi_book/features/notifications/data/models/notification_model.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';

extension NotificationMapper on NotificationModel {
  AppNotification toEntity(String baseUrl) {
    return AppNotification(
      id: id,
      type: type,
      title: title,
      message: message,
      isRead: isRead,
      createdAt: createdAt,
      readAt: readAt,
      svgUrl:  "$baseUrl/$svgUrl",
      target: target
    );
  }
}

extension NotificationModelListMapper on List<NotificationModel> {
  List<AppNotification> toEntityList(String baseUrl) {
    return map((model) => model.toEntity(baseUrl)).toList();
  }
}
