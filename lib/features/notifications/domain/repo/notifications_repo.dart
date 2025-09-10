import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';

abstract class NotificationsRepo {

  Future<Either<Failures, List<AppNotification>>> getPatientNotifications(int patientId);
  Future<Either<Failures, bool>> markNotificationAsRead(int notificationId, DateTime readAt);
  Future<Either<Failures, bool>> markAllNotificationsAsRead(DateTime readAt);

}