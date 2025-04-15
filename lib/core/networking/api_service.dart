import 'package:dio/dio.dart';
import 'package:medi_book/core/networking/api_constants.dart';
import 'package:medi_book/features/auth/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.login)
  Future<LoginResponse> login(
    @Path('email') String email,
    @Path('password') String password,
  );
}
