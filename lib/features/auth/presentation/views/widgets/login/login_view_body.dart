import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/login/already_have_an_account_text.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/core/widgets/custom_or_signIn_with.dart';
import 'package:medi_book/core/widgets/terms_and_conditions_text.dart';
import 'package:medi_book/features/auth/domain/entities/login_entitie.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/login/email_and_password.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/login/login_block_listener.dart';
import 'package:medi_book/features/onboarding/presentation/views/widgets/custom_all_available_SocialLogin.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 45.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: TextStyles.font32BlueBold,
            ),
            verticalSpace(10),
            Text(
              "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
              style: TextStyles.font14Text50Medium.copyWith(
                  color: ColorsManager.textBody,
                  fontWeight: FontWeightHelper.regular),
            ),
            verticalSpace(30),
            const EmailAndPassword(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyles.font12Neutral60Regular
                        .copyWith(color: ColorsManager.mainBlue),
                  )),
            ),

            verticalSpace(30),
            CustomButton(
                textValue: "Login",
                voidCallback: () {
                  validateThenDoLogin(context);
                }),
            verticalSpace(45),
            const CustomOrSigninWith(),
            verticalSpace(40),
            const CustomAllAvailableSociallogin(),
            verticalSpace(40),
            const Align(
                alignment: Alignment.center, child: TermsAndConditionsText()),
            verticalSpace(12),
            const AlreadyHaveAnAccountText(),
            const LoginBlockListener()
          ],
        ),
      ),
    ));
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(LoginEntitie(
          email: context.read<LoginCubit>().emailController.text,
          passWord: context.read<LoginCubit>().passWordController.text));
    }
  }
}
