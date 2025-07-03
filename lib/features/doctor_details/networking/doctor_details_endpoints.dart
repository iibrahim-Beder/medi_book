import 'package:medi_book/core/networking/api_constants.dart';

class DoctorDetailsEndpoints {

  static const String base = "${ApiConstants.baseUrl}";
  static const String getDoctorProfile = "${base}DoctorProfile/Get";
  static const String getDoctorLocations = "${base}DoctorLocations/GetDoctorLocations";
  static const String getDoctorReviews = "${base}DoctorReviews/List";
}