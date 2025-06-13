import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/di/dependency_injection.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/book_appointment_screen.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/details_doctor_screen.dart';
import 'package:medi_book/features/home/presentation/screens/doctor_speciality_screen/doctor_speciality_screen.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/home_screen.dart';
import 'package:medi_book/features/home/presentation/screens/search_doctor_screen/search_doctor_screen.dart';

abstract class HomeRoutes {
  static const String kHomeScreen = 'homeScreen';
  static const String doctorsSpecialityScreen = 'doctorsSpecialityScreen';
  static const String searchDoctorScreen = 'searchDoctorScreen';
  static const String detailsDoctorScreen = 'detailsDoctorScreen';
  static const String bookAppointmentScreen = 'bookAppointmentScreen';

  static final routes = <RouteBase>[
    ShellRoute(
        builder: (context, state, child) {
          return BlocProvider(
            create: (_) => MainHomeCubit(getIt())
              ..getSpecialties()
              ..getRecommendedDoctors(),
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
            name: searchDoctorScreen,
            builder: (context, state) => BlocProvider(
              create: (context) =>
                  SearchDoctorCubit(getIt())..getSearchedDoctors(),
              child: const SearchDoctorScreen(),
            ),
          ),
          GoRoute(
            path: "/detailsDoctorScreen",
            name: detailsDoctorScreen,
            builder: (context, state) {
              final doctor = state.extra as Doctor;
              return BlocProvider(
                create: (context) =>
                    DetailsDoctorCubit(getIt())
                    ..initializeDoctor(doctor)
                    ..getDoctorProfile(doctor.id), 
                child: const DetailsDoctorScreen(),
              );
            },
          ),
          GoRoute(
            path: "/bookAppointmentScreen",
            name: bookAppointmentScreen,
            builder: (context, state) => BlocProvider(
              create: (context) => BookAppointmentCubit(),
              child: const BookAppointmentScreen(),
            ),
          ),
        ])
  ];
}
