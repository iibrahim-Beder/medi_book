import 'package:hive/hive.dart';
import 'package:medi_book/features/notifications/data/mappers/notification_hive_mapper.dart';
import 'package:medi_book/features/notifications/data/mappers/notification_model_to_hive_mapper.dart';
import 'package:medi_book/features/notifications/data/models/notification_hive_model.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';
import 'package:medi_book/features/notifications/domain/utils/notification_filter_rules.dart';

class NotificationLocalDataSource {
  final Box<NotificationHiveModel> box;

  NotificationLocalDataSource(this.box);
  Future<void> addOrUpdateNotifications(
      List<AppNotification> notifications) async {
    for (final notification in notifications) {
      final hiveModel = notification.toHiveModel();
      await box.put(hiveModel.id, hiveModel);
    }
  }

  Future<void> updateNotificationById({
    required int id,
    String? type,
    String? title,
    String? message,
    bool? isRead,
    DateTime? readAt,
    DateTime? createdAt,
    String? svgUrl,
  }) async {
    final existing = box.get(id);

    if (existing == null) {
      print('Notification with ID $id not found.');
      return;
    }

    final updated = NotificationHiveModel(
      id: existing.id,
      type: type ?? existing.type,
      title: title ?? existing.title,
      message: message ?? existing.message,
      isRead: isRead ?? existing.isRead,
      createdAt: createdAt ?? existing.createdAt,
      readAt: readAt ?? existing.readAt,
      svgUrl: svgUrl ?? existing.svgUrl,
    );

    await box.put(id, updated);
    print('Notification $id updated.');
  }

  Future<List<AppNotification>> getAllNotifications() async {
    return box.values.toList().toEntityList();
  }
  

  Future<void> cleanExpiredNotifications() async {
    final all = box.values.toList();
    final expired = all
        .where((n) => !NotificationFilterRules.isValid(n.toEntity()))
        .toList();
    final expiredKeys = expired.map((n) => n.id).toList();

    await box.deleteAll(expiredKeys);
  }

  Future<void> deleteNotificationBox() async {
    final boxName = box.name;
    await box.close();
    await Hive.deleteBoxFromDisk(boxName);
  }
}
