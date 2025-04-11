import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/already_have_an_account_text.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/core/widgets/custom_or_signIn_with.dart';
import 'package:medi_book/core/widgets/custom_text_field.dart';
import 'package:medi_book/core/widgets/terms_and_conditions_text.dart';
import 'package:medi_book/features/login/presentation/views/remember_me_and_forget_password.dart';
import 'package:medi_book/features/onboarding/presentation/views/widgets/custom_all_available_SocialLogin.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 45),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyles.font32Blue700Weight,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
                style: TextStyles.font14Gray400Weight,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextField(
                hintText: "Email",
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                  hintText: "Password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _obscureText = !_obscureText;
                      setState(() {});
                    },
                    child: _obscureText ?Icon(Icons.visibility_off) : Icon(Icons.visibility),
                  ),
                  obscureText: _obscureText),
              SizedBox(
                height: 16.h,
              ),
              RememberMeAndForgetPassword(),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(textValue: "Login", voidCallback: () {}),
              SizedBox(
                height: 45.h,
              ),
              CustomOrSigninWith(),
              SizedBox(
                height: 40.h,
              ),
              CustomAllAvailableSociallogin(),
              SizedBox(
                height: 40.h,
              ),
              Align(
                  alignment: Alignment.center, 
                  child: TermsAndConditionsText()),
              SizedBox(
                height: 12.h,
              ),

              AlreadyHaveAnAccountText(),
            ],
          ),
        ),
      ),
    ));
  }
}
