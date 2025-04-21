import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/core/widgets/setup_error_state.dart';
import 'package:medi_book/features/auth/domain/entities/create_acc_by_email_entitie.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/signup/accept_terms_and_conditions.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/signup/password_and_confirm_password.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/signup/signup_block_listener.dart';

class SignupNextViewBody extends StatelessWidget {
  const SignupNextViewBody({super.key});

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
            PasswordAndConfirmPassword(),
            verticalSpace(20),
            AcceptTermsAndConditions(),
            verticalSpace(40),
            CustomButton(
                textValue: 'Create account',
                voidCallback: () {
                  validateThenCraeteAccount(context);
                }),
            const SignupBlockListener()
          ],
        ),
      ),
    ));
  }

  void validateThenCraeteAccount(BuildContext context) {
    
    if (context.read<SignupCubit>().formKeyNextScreen.currentState!.validate()) {

      if (!context.read<SignupCubit>().isAcceptTermsConditions) {
      setUpErrorState(context, 'You must agree to the terms and conditions.',popContext: false);
      return;
      }
    
      context.read<SignupCubit>().emitCreateAccountState(
          CreateAccByEmailEntitie(
              email: context.read<SignupCubit>().emailController.text,
              name: context.read<SignupCubit>().fullNameController.text,
              phone: context.read<SignupCubit>().phoneController.text,
              passWord: context.read<SignupCubit>().passWordController.text));
    }
  }
}
