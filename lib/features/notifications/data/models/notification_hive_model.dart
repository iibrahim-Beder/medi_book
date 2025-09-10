import 'package:hive/hive.dart';

part 'notification_hive_model.g.dart';

@HiveType(typeId: 0)
class NotificationHiveModel extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String type;

  @HiveField(2)
  String title;

  @HiveField(3)
  String message;

  @HiveField(4)
  bool isRead;

  @HiveField(5)
  DateTime createdAt;

  @HiveField(6)
  DateTime? readAt;

  @HiveField(7)
  String svgUrl;

  @HiveField(8)
  String? target;
  NotificationHiveModel(
      {required this.id,
      required this.type,
      required this.title,
      required this.message,
      required this.isRead,
      required this.createdAt,
      this.readAt,
      required this.svgUrl, 
      this.target,
      });
}
