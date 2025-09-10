import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel{
  final String statusCode;
  final bool succeeded;
  final String message;
  final JwtData data;

  AuthResponseModel({
    required this.statusCode,
    required this.succeeded,
    required this.message,
    required this.data,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

@JsonSerializable()
class JwtData {
  final String accessToken;
  final RefreshToken refreshToken;

  JwtData({required this.accessToken, required this.refreshToken});

  factory JwtData.fromJson(Map<String, dynamic> json) =>
      _$JwtDataFromJson(json);
}

@JsonSerializable()
class RefreshToken {
  final String email;
  final String tokenString;
  final DateTime expireAt;

RefreshToken({
    required this.email,
    required this.tokenString,
    required this.expireAt,
  });

   factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);

}
