import 'package:go_router/go_router.dart';
import 'package:medi_book/core/navigation_cubit/navigation_cubit.dart';
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

  static bool _initialized = false;

  static void init(NavigationCubit navigationCubit) {
    if (_initialized) return;
    _initialized = true;

    router.routerDelegate.addListener(() {
      final routeMatches = router.routerDelegate.currentConfiguration;
      if (routeMatches.isNotEmpty) {
        final currentRouteMatch = routeMatches.last;
        final routeName = currentRouteMatch.route.name;
        for (final element in BottomNavigationTab.values) {
          if (element.name == routeName) {
            navigationCubit.setShown(true);
            // navigationCubit.changeNavigation(element);

            navigationCubit.changeNavigation(element);
            break;
          }

          navigationCubit.setShown(false);
        }
      }
    });
  }
}
