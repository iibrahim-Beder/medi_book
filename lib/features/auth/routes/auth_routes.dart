import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/di/dependency_injection.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';
import 'package:medi_book/features/auth/presentation/views/login_view.dart';
import 'package:medi_book/features/auth/presentation/views/signup_next_view.dart';
import 'package:medi_book/features/auth/presentation/views/signup_view.dart';

abstract class AuthRoutes {
    static const String kLogin = 'login';
  static const String kSignupScreen = 'signupScreen';
  static const String kSignupNextScreen = 'signupNextScreen';

  static final routes = <RouteBase>[

      ShellRoute(
        builder: (context, state, child) {
          return BlocProvider(
            create: (_) => getIt<SignupCubit>(),
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/login',
            name: kLogin,
            builder: (context, state) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginView(),
            ),
          ),
          GoRoute(
            path: '/signupScreen',
            name: kSignupScreen,
            builder: (context, state) => const SignupView(),
          ),
          GoRoute(
            path: '/signupNextScreen',
            name: kSignupNextScreen,
            builder: (context, state) => const SignupNextView(),
          ),
        ],
      ),


  ];
}
