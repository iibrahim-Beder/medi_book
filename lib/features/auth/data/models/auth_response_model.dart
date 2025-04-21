import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/auth/domain/entities/auth_response_entitie.dart';
part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel extends AuthResponseEntitie {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  AuthResponseModel(this.message, this.userData, this.status, this.code) : super(userData!.userName);

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

@JsonSerializable()
class UserData {
  final String token;
  final String userName;

  UserData({required this.token, required this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
