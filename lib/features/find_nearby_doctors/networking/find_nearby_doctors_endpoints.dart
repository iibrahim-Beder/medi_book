

import 'package:medi_book/core/networking/api_constants.dart';
abstract class FindNearbyDoctorsEndpoints {
  static const String base = "${ApiConstants.baseUrl}";
  static const String findNearbyDoctors = "$base/FindNearbyDoctors";
}