import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/networking/api_service.dart';
import 'package:medi_book/features/auth/data/models/create_acc_by_email_request_model.dart';
import 'package:medi_book/features/auth/data/models/login_request_model.dart';
import 'package:medi_book/features/auth/domain/entities/create_acc_by_email_entitie.dart';
import 'package:medi_book/features/auth/domain/entities/login_entitie.dart';
import 'package:medi_book/features/auth/domain/entities/auth_response_entitie.dart';
import 'package:medi_book/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final ApiService _apiService;

  AuthRepoImpl(this._apiService);

  @override
  Future<Either<Failures, AuthResponseEntitie>> login(
      LoginEntitie loginRequestEntitie) async {
    LoginRequestModel loginRequestModel =
        LoginRequestModel.fromEntitie(loginRequestEntitie);
    try {
      final response =
          await _apiService.login(loginRequestModel);
      return right(response);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, AuthResponseEntitie>> createAccountWithEmail(
      CreateAccByEmailEntitie createAccountWithEmailEntitie) async {
    CreateAccByEmailRequestModel createAccByEmailRequestModel =
        CreateAccByEmailRequestModel.fromEntitie(createAccountWithEmailEntitie);
    try {
      final response = await _apiService
          .createAccountWithEmailAndPassWord(createAccByEmailRequestModel);
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
