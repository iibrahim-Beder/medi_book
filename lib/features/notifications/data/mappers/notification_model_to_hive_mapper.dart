import 'package:medi_book/features/notifications/data/models/notification_hive_model.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';

extension NotificationModelToHiveMapper on AppNotification {
  NotificationHiveModel toHiveModel() {
    return NotificationHiveModel(
      id: id,
      type: type,
      title: title,
      message: message,
      isRead: isRead,
      createdAt: createdAt,
      readAt: readAt,
      svgUrl: svgUrl,
      target: target
    );
  }
}