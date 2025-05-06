import 'package:go_router/go_router.dart';
import 'package:medi_book/features/auth/routes/auth_routes.dart';
import 'package:medi_book/features/home/routes/home_routes.dart';
import 'package:medi_book/features/onboarding/routes/onboarding_route.dart';

abstract class AppRouter {
  
  static final router = GoRouter(
    routes: [
  
      OnboardingRoute.route,
      ...AuthRoutes.routes,
      ...HomeRoutes.routes,
    
    ],
  );
}
