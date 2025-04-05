import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('logIn Screen'),
        backgroundColor: ColorsManager.white,
      ),
      body: Center(child: Text("Hello Tebsen")),
    );
  }
}
