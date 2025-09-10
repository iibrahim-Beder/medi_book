

import 'package:medi_book/core/networking/api_constants.dart';

class BookAppointmentEndpoints {

  static const String base = "${ApiConstants.baseUrl}";
  static const String getDayAvailableTimeSlots = "${base}Bookings/GetDoctorDayTimeSlots";
  static const String getDoctorAvailableDays = "${base}Bookings/GetDoctorAvailableWorkDays";
  static const String addInitiateBooking = "${base}Bookings/AddInitialBookingTimeSlot";

}