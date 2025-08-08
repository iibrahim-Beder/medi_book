import 'package:flutter/material.dart';
import 'package:medi_book/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingScreenBody(),
    );
  }
}
