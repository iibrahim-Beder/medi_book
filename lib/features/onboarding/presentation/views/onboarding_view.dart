import 'package:flutter/material.dart';
import 'package:medi_book/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: OnboardingViewBody(),
    );
  }
}
