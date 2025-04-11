import 'package:go_router/go_router.dart';
import 'package:medi_book/features/login/login_view.dart';
import 'package:medi_book/features/onboarding/presentation/views/onboarding_view.dart';

abstract class AppRouter {
  static const String kOnboarding = 'onboarding';
  static const String kLogin = 'login'; 

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', 
        name: kOnboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: '/login',
        name: kLogin, 
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}