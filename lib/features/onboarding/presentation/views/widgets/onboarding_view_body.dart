import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/routing/app_router.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/features/onboarding/presentation/views/widgets/doctor_image_and_text.dart';
import 'package:medi_book/features/onboarding/presentation/views/widgets/logo_with_name_logo.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const LogoWithNameLogo(),
              SizedBox(
                height: 30.h,
              ),
              const DoctorImageAndText(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyles.font11TextBodyBold,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButton(
                      textValue: 'Get Started',
                      voidCallback: () =>  context.pushReplacementNamed(AppRouter.kLogin)
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
