import 'package:dio/dio.dart';
import 'package:medi_book/core/networking/api_constants.dart';
import 'package:medi_book/features/auth/data/models/auth_response_model.dart';
import 'package:medi_book/features/auth/data/models/create_acc_by_email_request_model.dart';
import 'package:medi_book/features/auth/data/models/login_request_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<AuthResponseModel> login(
    @Body() LoginRequestModel body
  );

  @POST(ApiConstants.createAccountWithEmailAndPassWord)
  Future<AuthResponseModel> createAccountWithEmailAndPassWord(
   @Body() CreateAccByEmailRequestModel body,
  );

}
