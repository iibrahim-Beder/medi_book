
import 'package:dio/dio.dart';
import 'package:medi_book/core/networking/base_response_model.dart';
import 'package:medi_book/core/networking/paginated_response_model.dart';
import 'package:medi_book/features/doctor_details/data/models/doctor_location_model.dart';
import 'package:medi_book/features/doctor_details/data/models/doctor_profile_model.dart';
import 'package:medi_book/features/doctor_details/data/models/doctor_review_model.dart';
import 'package:medi_book/features/doctor_details/networking/doctor_details_endpoints.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'doctor_details_api_service.g.dart';

@RestApi(baseUrl: DoctorDetailsEndpoints.base)
abstract class DoctorDetailsApiService{

  factory DoctorDetailsApiService(Dio dio, {String baseUrl}) = _DoctorDetailsApiService;

  @GET(DoctorDetailsEndpoints.getDoctorProfile)
  Future<DoctorProfileModel> getDoctorProfile(@Path('id') int id);

  @GET(DoctorDetailsEndpoints.getDoctorLocations)
  Future<BaseResponseModel<List<DoctorLocationModel>>> getDoctorLocations(
      @Path('id') int id);

  @GET(DoctorDetailsEndpoints.getDoctorReviews)
  Future<PaginatedResponseModel<List<DoctorReviewModel>>> getDoctorReviews(
    @Path('id') int id,
    @Query('pageNumber') int pageNumber,
    @Query('pageSize') int pageSize,
  );
}