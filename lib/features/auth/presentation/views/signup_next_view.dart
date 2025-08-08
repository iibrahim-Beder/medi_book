import 'package:flutter/material.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/signup/signup_next_view_body.dart';

class SignupNextView extends StatelessWidget {
  const SignupNextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SignupNextViewBody(),
    );
  }
}
