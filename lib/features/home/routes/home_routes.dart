import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/screens/doctor_speciality_screen/doctor_speciality_screen.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/home_screen.dart';
import 'package:medi_book/features/home/presentation/screens/search_doctor_screen/search_doctor_screen.dart';

abstract class HomeRoutes {
  static const String kHomeScreen = 'homeScreen';
  static const String doctorsSpecialityScreen = 'DoctorsSpecialityScreen';
  static const String recommendationDoctorScreen = 'searchDoctorScreen';

  static final routes = <RouteBase>[
    ShellRoute(
        builder: (context, state, child) {
          return BlocProvider(
            create: (_) => SearchDoctorCubit(),
            child: child,
          );
        },
        routes: [
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
            path: "/searchDoctorScreen",
            name: recommendationDoctorScreen,
            builder: (context, state) => const SearchDoctorScreen(),
          ),
        ])
  ];
}
