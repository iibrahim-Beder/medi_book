// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    LoginRequestModel(
      email: json['email'] as String,
      passWord: json['passWord'] as String,
    );

Map<String, dynamic> _$LoginRequestModelToJson(LoginRequestModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'passWord': instance.passWord,
    };
