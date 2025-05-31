import 'package:dio/dio.dart';
import 'package:medi_book/core/networking/base_response_model.dart';
import 'package:medi_book/features/home/data/models/get_doctors_model.dart';
import 'package:medi_book/features/home/data/models/specialty_model.dart';
import 'package:medi_book/features/home/networking/home_endpoints.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: HomeEndpoints.base)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(HomeEndpoints.getDoctors)
  Future<GetPaginatedDoctorsModel> getPaginatedDoctors(
      @Query('pageNumber') int pageNumber, @Query('pageSize') int pageSize);

  @GET(HomeEndpoints.getSpecialties)
  Future<BaseResponseModel<List<SpecialtyModel>>> getSpecialties();
}
