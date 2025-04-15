import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/di/dependency_injection.dart';
import 'package:medi_book/features/auth/presentation/views/login_view.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:medi_book/features/home/presentation/views/home_view.dart';
import 'package:medi_book/features/onboarding/presentation/views/onboarding_view.dart';

abstract class AppRouter {
  static const String kOnboarding = 'onboarding';
  static const String kLogin = 'login';
  static const String kHomeScreen = 'homeScreen';

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
        builder: (context, state) => BlocProvider(

          create: (context) => getIt<LoginCubit>(),
          child: const LoginView(),
        ),
      ),
      GoRoute(
        path: '/homeScreen',
        name: kHomeScreen,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
