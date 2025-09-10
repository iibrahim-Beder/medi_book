import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/auth/routes/auth_routes.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account yet?",
          style: TextStyles.font12Neutral60Regular
              .copyWith(fontSize: 11, color: ColorsManager.text100),
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(AuthRoutes.kSignupScreen);
          },
          child: Text(
            "Sign Up",
            style: TextStyles.font12Neutral60Regular
                .copyWith(fontSize: 11, color: ColorsManager.mainBlue),
          ),
        ),
      ],
    );
  }
}


