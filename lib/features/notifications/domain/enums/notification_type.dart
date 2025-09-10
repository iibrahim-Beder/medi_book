enum NotificationType {
  appointmentBooked,
  appointmentCancelledByDoctor,
  appointmentCancelledByPatient,
  appointmentRescheduled,
  appointmentReminder24h,
  appointmentReminder1h,
  paymentSuccessful,
  paymentFailed,
  systemAnnouncement,
  maintenanceNotification,
  accountVerificationReminder,
  newDoctorAvailableInArea,
}

NotificationType parseType(String value) {
  return NotificationType.values.firstWhere(
    (e) => e.name.toLowerCase() == value.toLowerCase(),
    orElse: () => NotificationType.systemAnnouncement, 
  );
}
