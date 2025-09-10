

import 'package:medi_book/core/networking/api_constants.dart';

class AuthEndpoints {
  
  static const String base = "${ApiConstants.baseUrl}Auth/";

  static const String login = "${base}LoginWithEmailAndPassWord";
  static const String createAccountWithEmailAndPassWord = "${base}CreateAccountWithEmailAndPassWord";

}