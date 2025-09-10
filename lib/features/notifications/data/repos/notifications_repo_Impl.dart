import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/networking/api_constants.dart';
import 'package:medi_book/features/notifications/data/datasources/notification_local_datasource.dart';
import 'package:medi_book/features/notifications/data/mappers/notification_mapper.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';
import 'package:medi_book/features/notifications/domain/repo/notifications_repo.dart';
import 'package:medi_book/features/notifications/networking/notifications_api_service.dart';

class NotificationsRepoImpl implements NotificationsRepo {
  final NotificationLocalDataSource localDataSource;
  final NotificationsApiService remoteDataSource;

  NotificationsRepoImpl(this.localDataSource, this.remoteDataSource);

  @override
  Future<Either<Failures, List<AppNotification>>> getPatientNotifications(
      int patientId) async {
    try {
      // // Step 1: Try to get notifications from local storage (Hive)

      // final localNotifications = await localDataSource.getAllNotifications();

      // if (localNotifications.isNotEmpty) {
      //   // If we have local data, return it immediately
      //   return Right(localNotifications);
      // }
      // Step 2: If local data empty, fetch from API
      final remoteNotifications =
          await remoteDataSource.getPatientNotification(patientId);

      // Step 3: Save fetched notifications locally
      await localDataSource.addOrUpdateNotifications(remoteNotifications.data
          .toEntityList(ApiConstants.baseUrl.replaceAll('/Api/v1', '')));


      var mapperNotifications = remoteNotifications.data
          .toEntityList(ApiConstants.baseUrl.replaceAll('/Api/v1', ''));
      print("*********************");
      print(mapperNotifications);
      // Step 4: Return remote notifications
      return Right(mapperNotifications);
    } catch (e) {
      // Handle errors: return failure here
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, bool>> markAllNotificationsAsRead(
      DateTime readAt) async {
    var response = await remoteDataSource.markAllNotificationsAsRead(readAt);

    if (response.succeeded) {
      return Right(response.succeeded);
    } else {
      return Left(ServerFailure(response.message ?? 'test'));
    }
  }

  @override
  Future<Either<Failures, bool>> markNotificationAsRead(
      int notificationId, DateTime readAt) async {
    var response =
        await remoteDataSource.markNotificationAsRead(notificationId, readAt);

    if (response.succeeded) {
      return Right(response.succeeded);
    } else {
      return Left(ServerFailure(response.message ?? 'test'));
    }
  }
}
