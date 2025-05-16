import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/details_doctor_screen.dart';
import 'package:medi_book/features/home/presentation/screens/doctor_speciality_screen/doctor_speciality_screen.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/home_screen.dart';
import 'package:medi_book/features/home/presentation/screens/search_doctor_screen/search_doctor_screen.dart';

abstract class HomeRoutes {
  static const String kHomeScreen = 'homeScreen';
  static const String doctorsSpecialityScreen = 'doctorsSpecialityScreen';
  static const String searchDoctorScreen = 'searchDoctorScreen';
  static const String detailsDoctorScreen = 'detailsDoctorScreen';

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
            path: '/homeScreen',
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
            name: searchDoctorScreen,
            builder: (context, state) => const SearchDoctorScreen(),
          ),
          GoRoute(
            path: "/",
            name: detailsDoctorScreen,
            builder: (context, state) => BlocProvider(
              create: (context) => DetailsDoctorCubit(),
              child: const DetailsDoctorScreen(),
            ),
          ),
        ])
  ];
}
