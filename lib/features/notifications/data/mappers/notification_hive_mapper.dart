import 'package:medi_book/features/notifications/data/models/notification_hive_model.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';

extension NotificationHiveMapper on NotificationHiveModel {
  AppNotification toEntity() {
    return AppNotification(
      id: id,
      type: type,
      title: title,
      message: message,
      isRead: isRead,
      createdAt: createdAt,
      readAt: readAt, 
      svgUrl: svgUrl,

    );
  }
}

extension NotificationHiveListMapper on List<NotificationHiveModel> {
  List<AppNotification> toEntityList() {
    return map((e) => e.toEntity()).toList();
  }
}
