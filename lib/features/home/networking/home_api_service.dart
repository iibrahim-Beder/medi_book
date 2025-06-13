import 'package:dio/dio.dart';
import 'package:medi_book/core/networking/base_response_model.dart';
import 'package:medi_book/core/networking/paginated_response_model.dart';
import 'package:medi_book/features/home/data/models/doctor_location_model.dart';
import 'package:medi_book/features/home/data/models/doctor_model.dart';
import 'package:medi_book/features/home/data/models/doctor_profile_model.dart';
import 'package:medi_book/features/home/data/models/doctor_review_model.dart';
import 'package:medi_book/features/home/data/models/specialty_model.dart';
import 'package:medi_book/features/home/networking/home_endpoints.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: HomeEndpoints.base)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(HomeEndpoints.getDoctors)
  Future<PaginatedResponseModel<List<DoctorModel>>> getPaginatedDoctors(
      @Queries() Map<String, dynamic> query);

  @GET(HomeEndpoints.getSpecialties)
  Future<BaseResponseModel<List<SpecialtyModel>>> getSpecialties();

  @GET(HomeEndpoints.getDoctorProfile)
  Future<DoctorProfileModel> getDoctorProfile(@Path('id') int id);

  @GET(HomeEndpoints.getDoctorLocations)
  Future<BaseResponseModel<List<DoctorLocationModel>>> getDoctorLocations(@Path('id') int id);

@GET(HomeEndpoints.getDoctorReviews)
Future<PaginatedResponseModel<List<DoctorReviewModel>>> getDoctorReviews(
  @Path('id') int id,
  @Query('pageNumber') int pageNumber,
  @Query('pageSize') int pageSize,
);
}
