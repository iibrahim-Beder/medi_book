import 'package:dio/dio.dart';
import 'package:medi_book/core/networking/base_response_model.dart';
import 'package:medi_book/features/notifications/data/models/notification_model.dart';
import 'package:medi_book/features/notifications/networking/notifications_end_points.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'notifications_api_service.g.dart';


@RestApi(baseUrl: NotificationsEndPoints.base)
abstract class NotificationsApiService {

  factory NotificationsApiService(Dio dio, {String baseUrl}) = _NotificationsApiService;

@GET(NotificationsEndPoints.getPatientNotifications)
Future<BaseResponseModel<List<NotificationModel>>> getPatientNotification(@Query('id') int id);

@POST(NotificationsEndPoints.markNotificationAsRead)
Future<BaseResponseModel<bool>> markNotificationAsRead(@Query('notificationId') int id , @Query('readAt') DateTime readAt);

@POST(NotificationsEndPoints.markAllNotificationsAsRead)
Future<BaseResponseModel<bool>> markAllNotificationsAsRead(@Query('readAt') DateTime readAt);

}