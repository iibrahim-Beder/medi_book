import 'package:go_router/go_router.dart';
import 'package:medi_book/core/navigation_cubit/navigation_cubit.dart';
import 'package:medi_book/core/navigation/navigation_key_service.dart';
import 'package:medi_book/features/auth/routes/auth_routes.dart';
import 'package:medi_book/features/home/routes/home_routes.dart';
import 'package:medi_book/features/onboarding/routes/onboarding_route.dart';

abstract class AppRouter {
  static final router = GoRouter(
    navigatorKey: navigatorKey,
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

    bool matched = false;
    for (final element in BottomNavigationTab.values) {
      if (element.name == routeName) {
        if (navigationCubit.state.selectedNavigation != element) {
          navigationCubit.changeNavigation(element);
        }
        navigationCubit.setShown(true);
        matched = true;
        break;
      }
    }
    if (!matched) {
      if (navigationCubit.state.isShowen) {
        navigationCubit.setShown(false);
      }
    }
  }
});
  }
}
