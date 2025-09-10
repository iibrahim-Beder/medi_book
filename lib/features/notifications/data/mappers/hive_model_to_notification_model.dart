import 'package:medi_book/features/notifications/data/models/notification_model.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';

extension HiveModelToNotificationModel on AppNotification {
  NotificationModel toModel() {
    return NotificationModel(
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
