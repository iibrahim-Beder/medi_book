
import 'package:dio/dio.dart';
import 'package:medi_book/core/networking/base_response_model.dart';
import 'package:medi_book/features/find_nearby_doctors/data/models/response/cell_locations_with_doctors_model.dart';
import 'package:medi_book/features/find_nearby_doctors/networking/find_nearby_doctors_endpoints.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'find_nearby_doctors_api_service.g.dart';

@RestApi(baseUrl: FindNearbyDoctorsEndpoints.base)
abstract class FindNearbyDoctorsApiService {

factory FindNearbyDoctorsApiService(Dio dio , {String? baseUrl}) = _FindNearbyDoctorsApiService;

@GET(FindNearbyDoctorsEndpoints.findNearbyDoctors)
Future<BaseResponseModel<List<CellLocationsWithDoctorsModel>>> findNearbyDoctors();

}