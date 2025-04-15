import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/networking/api_service.dart';
import 'package:medi_book/features/auth/data/models/login_request.dart';
import 'package:medi_book/features/auth/domain/entities/login_request_entitie.dart';
import 'package:medi_book/features/auth/domain/entities/login_response_entitie.dart';
import 'package:medi_book/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiService _apiService;

  AuthRepoImpl(this._apiService);

  @override
  Future<Either<Failures, LoginResponseEntitie>> login(
      LoginRequestEntitie loginRequestEntitie) async {
    LoginRequest loginRequest = LoginRequest.fromEntitie(loginRequestEntitie);
    try {
      final response =
          await _apiService.login(loginRequest.email, loginRequest.passWord);
      return right(response);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }
}
