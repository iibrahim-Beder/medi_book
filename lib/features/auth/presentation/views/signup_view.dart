import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/routing/app_router.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/signup/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.pop(context);
        }
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorsManager.backgroundWhite,
          ),
          body: SignupViewBody()),
    );
  }
}
