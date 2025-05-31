import 'package:medi_book/core/networking/api_constants.dart';

class HomeEndpoints {
  
  static const String base = "${ApiConstants.baseUrl}";
  static const String getDoctors = "${base}DoctorOverview/List";
  static const String getSpecialties = "${base}Speciality/List";

}