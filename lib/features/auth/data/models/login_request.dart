import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/auth/domain/entities/login_request_entitie.dart';
part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest extends LoginRequestEntitie {
  final String email;
  final String passWord;

  LoginRequest({required this.email, required this.passWord}) : super(email: email, passWord: passWord);

  factory LoginRequest.fromEntitie(LoginRequestEntitie loginRequestEntitie) {
    return LoginRequest(
      email: loginRequestEntitie.email,
      passWord: loginRequestEntitie.passWord,
    );
  }

  Map<String, dynamic> tojson() => _$LoginRequestToJson(this);
}
