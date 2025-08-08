import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/signup/fullname_and_email_and_phone.dart';
import 'package:medi_book/features/auth/routes/auth_routes.dart';

class SignupViewBody extends StatelessWidget {
  SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Account",
              style: TextStyles.font32BlueBold,
            ),
            verticalSpace(10),
            Text(
              "Sign up now and start exploring all that our\napp has to offer. We're excited to welcome\nyou to our community!",
              style: TextStyles.font14Text50Medium.copyWith(
                  color: ColorsManager.textBody,
                  fontWeight: FontWeightHelper.regular),
            ),
            verticalSpace(30),
            FullNameAndEmailAndPhone(),
            verticalSpace(30),
            verticalSpace(30),
            CustomButton(
                textValue: 'Next',
                voidCallback: () {
                  validateThenGoNext(context);
                }),
              
          ],
        ),
      ),
    ));
  }

  void validateThenGoNext(BuildContext context) {
    
      if(context.read<SignupCubit>().formKey.currentState!.validate()){
        context.pushNamed(AuthRoutes.kSignupNextScreen);
      }
    
  }
}
