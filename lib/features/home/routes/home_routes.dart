import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/di/dependency_injection.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/my_appointment_cubit/my_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/search_appointment_screen/search_my_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/my_appointment_screen.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/my_appointment_screen_body.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/search_appointment_screen/search_appointment_screen.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/details_doctor_screen.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';
import 'package:medi_book/features/message/presentation/screens/chat/chat_screen.dart';
import 'package:medi_book/features/message/presentation/screens/inpox/inpox_screen.dart';
import 'package:medi_book/features/my_profile/presentation/screens/language/language_screen.dart';
import 'package:medi_book/features/my_profile/presentation/screens/notification_settings/notification_settings_screen.dart';
import 'package:medi_book/features/my_profile/presentation/screens/security/security_screen.dart';
import 'package:medi_book/features/my_profile/presentation/screens/setting/setting_screen.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/profile_screen.dart';
import 'package:medi_book/features/notifications/presentation/views/notifications_screen.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/book_appointment_screen.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/booking_confirmation_screen.dart';
import 'package:medi_book/features/home/presentation/screens/doctor_speciality_screen/doctor_speciality_screen.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/home_screen.dart';
import 'package:medi_book/features/search_doctors/presentation/screens/search_doctor_screen/search_doctor_screen.dart';
import 'package:medi_book/main_layout.dart';

abstract class HomeRoutes {
  static const String kHomeScreen = 'homeScreen';
  static const String doctorsSpecialityScreen = 'doctorsSpecialityScreen';
  static const String searchDoctorScreen = 'searchDoctorScreen';
  static const String detailsDoctorScreen = 'detailsDoctorScreen';
  static const String bookAppointmentScreen = 'bookAppointmentScreen';
  static const String confirmationScreen = 'confirmationScreen';
  static const String myAppointmentScreen = 'myAppointmentScreen';
  static const String searchMyAppointmentScreen = 'searchMyAppointmentScreen';
  static const String myProfileScreen = 'myProfileScreen';
  static const String settingScreen = 'settingScreen';
  static const String notificationSettingScreen = 'notificationSettingScreen';
  static const String securityScreen = 'securityScreen';
  static const String languageScreen = 'languageScreen';
  static const String inpoxScreen = 'inpoxScreen';
  static const String chatPageScreen = 'chatPageScreen';
  static const String notificationScreen = 'notificationScreen';

  static final routes = <RouteBase>[
    ShellRoute(
        builder: (context, state, child) {
          return MainLayout(child: child);
        },
        routes: [
          GoRoute(
            path: '/',
            name: HomeRoutes.kHomeScreen,
            builder: (context, state) {
              final mainHomeCubit = context.read<MainHomeCubit>();
              return BlocProvider.value(
                value: mainHomeCubit,
                child: const HomeScreen(),
              );
            },
          ),
          GoRoute(
            path: '/doctorsSpecialityScreen',
            name: doctorsSpecialityScreen,
            builder: (context, state) => const DoctorSpecialityscreen(),
          ),
          GoRoute(
              path: "/searchDoctorScreen",
              name: searchDoctorScreen,
              builder: (context, state) {
                final speciality = state.extra as List<Speciality>;
                return BlocProvider(
                  create: (context) => SearchDoctorCubit(getIt(), speciality),
                  child: const SearchDoctorScreen(),
                );
              }),
          GoRoute(
            path: "/detailsDoctorScreen",
            name: detailsDoctorScreen,
            builder: (context, state) {
              final doctor = state.extra as Doctor;
              return BlocProvider(
                create: (context) => DetailsDoctorCubit(getIt(), doctor),
                child: const DetailsDoctorScreen(),
              );
            },
          ),
          GoRoute(
              path: "/bookAppointmentScreen",
              name: bookAppointmentScreen,
              builder: (context, state) {
                final doctor = state.extra as Doctor;
                return BlocProvider(
                  create: (context) => BookAppointmentCubit(getIt(), doctor),
                  child: const BookAppointmentScreen(),
                );
              }),
          GoRoute(
              path: "/confirmationScreen",
              name: confirmationScreen,
              builder: (context, state) {
                final doctor = state.extra as Doctor;
                return BookingConfirmation(
                  doctor: doctor,
                );
              }),
          GoRoute(
              path: "/myAppointmentScreen",
              name: myAppointmentScreen,
              builder: (context, state) => BlocProvider(
                    create: (context) => MyAppointmentCubit(),
                    child: const MyAppointmentScreen(),
                  )),
          GoRoute(
              path: "/searchMyAppointmentScreen",
              name: searchMyAppointmentScreen,
              builder: (context, state) => BlocProvider(
                    create: (context) => SearchMyAppointmentCubit(
                        state.extra as MyAppointmentType),
                    child: const SearchMyAppointmentScreen(),
                  )),
          GoRoute(
            path: "/myProfileScreen",
            name: myProfileScreen,
            builder: (context, state) => const MyProfileScreen(),
          ),
          GoRoute(
            path: "/settingScreen",
            name: settingScreen,
            builder: (context, state) => const SettingScreen(),
          ),
          GoRoute(
            path: "/notificationSettingScreen",
            name: notificationSettingScreen,
            builder: (context, state) => const NotificationSettingsScreen(),
          ),
          GoRoute(
            path: "/securityScreen",
            name: securityScreen,
            builder: (context, state) => const SecurityScreen(),
          ),
          GoRoute(
            path: "/languageScreen",
            name: languageScreen,
            builder: (context, state) => const LanguageScreen(),
          ),
          GoRoute(
            path: "/inpoxScreen",
            name: inpoxScreen,
            builder: (context, state) => const InpoxScreen(),
          ),
          GoRoute(
            path: "/chatPage",
            name: chatPageScreen,
            builder: (context, state) => BlocProvider(
              create: (context) => ChatCubit(),
              child: const ChatScreen(),
            ),
          ),
          GoRoute(
              path: "/notificationScreen",
              name: notificationScreen,
              builder: (context, state) => const NotificationsScreen()),
        ])
  ];
}
