import 'package:timeago/timeago.dart' as timeago;

class DateHelper {
  static String formatDateToTimeAgo(DateTime date) {
    return timeago.format(date); 
  }
}