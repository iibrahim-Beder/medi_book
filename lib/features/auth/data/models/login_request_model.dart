import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/auth/domain/entities/login_entitie.dart';
part 'login_request_model.g.dart';

@JsonSerializable()
class LoginRequestModel extends LoginEntitie {
  
  final String email;
  final String passWord;

  LoginRequestModel({required this.email, required this.passWord}) : super(email: email, passWord: passWord);

  factory LoginRequestModel.fromEntitie(LoginEntitie loginRequestEntitie) {
    return LoginRequestModel(
      email: loginRequestEntitie.email,
      passWord: loginRequestEntitie.passWord,
    );
  }

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}
