import 'package:medi_book/features/auth/data/models/auth_response_model.dart';
import 'package:medi_book/features/auth/domain/entities/auth_response_entitie.dart';

extension AuthResponseModelMapper on AuthResponseModel {
  AuthResponseEntitie toEntitie() {
    return AuthResponseEntitie(
        statusCode: statusCode,
        succeeded: succeeded,
        message: message,
        data: data.toEntitie());
  }
}

extension JwtDataModelMapper on JwtData {
  JwtDataEntitie toEntitie() => JwtDataEntitie(
      accessToken: accessToken, refreshToken: refreshToken.toEntitie());
}

extension RefreshTokenModelMapper on RefreshToken {
  RefreshTokenEntitie toEntitie() => RefreshTokenEntitie(
      email: email, tokenString: tokenString, expireAt: expireAt);
}
