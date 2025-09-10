import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';
import 'package:medi_book/features/notifications/domain/enums/notification_type.dart';

typedef NotificationFilterRule = bool Function(AppNotification notification);

class NotificationFilterRules {

  static final Map<NotificationType, NotificationFilterRule> _rules = {
    NotificationType.appointmentReminder24h: (n) => 
    n.createdAt.isAfter(DateTime.now().subtract(Duration(hours: 24))),

    NotificationType.appointmentReminder1h: (n) =>
        n.createdAt.isAfter(DateTime.now().subtract(Duration(hours: 1))),

    NotificationType.maintenanceNotification: (n) =>
        n.createdAt.isAfter(DateTime.now().subtract(Duration(days: 7))),

    NotificationType.accountVerificationReminder: (n) =>
        !n.isRead, // Keep it until the user reads it

    // Default: keep for 30 days
    NotificationType.appointmentBooked: _defaultRule,
    NotificationType.appointmentCancelledByDoctor: _defaultRule,
    NotificationType.appointmentCancelledByPatient: _defaultRule,
    NotificationType.appointmentRescheduled: _defaultRule,
    NotificationType.paymentSuccessful: _defaultRule,
    NotificationType.paymentFailed: _defaultRule,
    NotificationType.systemAnnouncement: _defaultRule,
    NotificationType.newDoctorAvailableInArea: _defaultRule,
  };

  static bool _defaultRule(AppNotification n) =>
      n.createdAt.isAfter(DateTime.now().subtract(Duration(days: 30)));

  static bool isValid(AppNotification notification) {
    final type = parseType(notification.type);
    final rule = _rules[type] ?? _defaultRule;
    return rule(notification);
  }
}
