import 'package:go_router/go_router.dart';
import 'package:medi_book/features/home/presentation/screens/doctor_speciality_screen/doctor_speciality_screen.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/home_screen.dart';
import 'package:medi_book/features/home/presentation/screens/search_doctor_screen/search_doctor_screen.dart';

abstract class HomeRoutes {
  static const String kHomeScreen = 'homeScreen';
  static const String doctorsSpecialityScreen = 'DoctorsSpecialityScreen';
  static const String recommendationDoctorScreen = 'RecommendationDoctorScreen';

  static final routes = <RouteBase>[

    GoRoute(
      path: '/',
      name: kHomeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/doctorsSpecialityScreen',
      name: doctorsSpecialityScreen,
      builder: (context, state) => const DoctorSpecialityscreen(),
    ),
    GoRoute(
      path: "/recommendationDoctorScreen",
      name: recommendationDoctorScreen,
      builder: (context, state) => const SearchDoctorScreen(),
    ),
  ];
}
