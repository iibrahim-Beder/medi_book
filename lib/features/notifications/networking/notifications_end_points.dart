
import 'package:medi_book/core/networking/api_constants.dart';

class NotificationsEndPoints {
  static const String base = "${ApiConstants.baseUrl}";
  static const String notifications = 'Notifications';
  static const String getPatientNotifications = "${base}${notifications}/GetPatientNotifications";
  static const String markNotificationAsRead = "${base}${notifications}/MarkNotificationAsRead";
  static const String markAllNotificationsAsRead = "${base}${notifications}/MarkAllNotificationsAsRead";

}