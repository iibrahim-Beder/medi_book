import 'package:dio/dio.dart';
import 'package:medi_book/features/auth/data/models/auth_response_model.dart';
import 'package:medi_book/features/auth/data/models/create_acc_by_email_request_model.dart';
import 'package:medi_book/features/auth/data/models/login_request_model.dart';
import 'package:medi_book/features/auth/networking/auth_endpoints.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'auth_api_service.g.dart';

@RestApi(baseUrl: AuthEndpoints.base)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @POST(AuthEndpoints.login)
  Future<AuthResponseModel> login(
    @Body() LoginRequestModel body
  );

  @POST(AuthEndpoints.createAccountWithEmailAndPassWord)

  Future<AuthResponseModel> createAccountWithEmailAndPassWord(
   @Body() CreateAccByEmailRequestModel body,
  );

}
