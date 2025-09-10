// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_acc_by_email_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAccByEmailRequestModel _$CreateAccByEmailRequestModelFromJson(
        Map<String, dynamic> json) =>
    CreateAccByEmailRequestModel(
      accountID: (json['accountID'] as num).toInt(),
      email: json['email'] as String,
      name: json['userName'] as String,
      phone: json['phoneNumber'] as String,
      passWord: json['passWord'] as String,
    );

Map<String, dynamic> _$CreateAccByEmailRequestModelToJson(
        CreateAccByEmailRequestModel instance) =>
    <String, dynamic>{
      'accountID': instance.accountID,
      'email': instance.email,
      'userName': instance.name,
      'phoneNumber': instance.phone,
      'passWord': instance.passWord,
    };
