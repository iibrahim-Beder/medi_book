class AuthResponseEntitie {
  final String statusCode;
  final bool succeeded;
  final String message;
  final JwtDataEntitie? data;

  AuthResponseEntitie({required this.statusCode, required this.succeeded, required this.message,this.data});
}

class JwtDataEntitie {
  final String accessToken;
  final RefreshTokenEntitie refreshToken;

  JwtDataEntitie({required this.accessToken, required this.refreshToken});
}

class RefreshTokenEntitie {
  final String email;
  final String tokenString;
  final DateTime expireAt;

  RefreshTokenEntitie({required this.email, required this.tokenString, required this.expireAt});

}
