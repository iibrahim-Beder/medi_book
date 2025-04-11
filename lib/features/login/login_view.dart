import 'package:flutter/material.dart';
import 'package:medi_book/features/login/presentation/views/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody()
    );
  }
}
