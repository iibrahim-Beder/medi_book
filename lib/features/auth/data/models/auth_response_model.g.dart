// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponseModel _$AuthResponseModelFromJson(Map<String, dynamic> json) =>
    AuthResponseModel(
      statusCode: json['statusCode'] as String,
      succeeded: json['succeeded'] as bool,
      message: json['message'] as String,
      data: JwtData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseModelToJson(AuthResponseModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'succeeded': instance.succeeded,
      'message': instance.message,
      'data': instance.data,
    };

JwtData _$JwtDataFromJson(Map<String, dynamic> json) => JwtData(
      accessToken: json['accessToken'] as String,
      refreshToken:
          RefreshToken.fromJson(json['refreshToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JwtDataToJson(JwtData instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) => RefreshToken(
      email: json['email'] as String,
      tokenString: json['tokenString'] as String,
      expireAt: DateTime.parse(json['expireAt'] as String),
    );

Map<String, dynamic> _$RefreshTokenToJson(RefreshToken instance) =>
    <String, dynamic>{
      'email': instance.email,
      'tokenString': instance.tokenString,
      'expireAt': instance.expireAt.toIso8601String(),
    };
