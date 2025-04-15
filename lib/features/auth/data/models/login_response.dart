import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/auth/domain/entities/login_response_entitie.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends LoginResponseEntitie {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  LoginResponse(this.message, this.userData, this.status, this.code) : super(userData!.userName);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  final String token;
  final String userName;

  UserData({required this.token, required this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
