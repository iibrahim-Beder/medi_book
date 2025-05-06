import 'package:go_router/go_router.dart';
import 'package:medi_book/features/onboarding/presentation/views/onboarding_view.dart';

abstract class OnboardingRoute {
  static const String kOnboarding = 'onboarding';

   static final route = GoRoute(
    path: '/onboarding',
    name: kOnboarding,
    builder: (context, state) => const OnboardingView(),
  );
}
