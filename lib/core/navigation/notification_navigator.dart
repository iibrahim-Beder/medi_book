import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/features/home/routes/home_routes.dart';

class NotificationNavigator {
  static final Map<String, String> _targetToRouteName = {
    'home_screen': HomeRoutes.kHomeScreen,
    'doctors_speciality': HomeRoutes.doctorsSpecialityScreen,
    'search_doctor': HomeRoutes.searchDoctorScreen,
    'doctor_details': HomeRoutes.detailsDoctorScreen,
    'book_appointment': HomeRoutes.bookAppointmentScreen,
    'confirmation': HomeRoutes.confirmationScreen,
    'my_appointment': HomeRoutes.myAppointmentScreen,
    'search_my_appointment': HomeRoutes.searchMyAppointmentScreen,
    'my_profile': HomeRoutes.myProfileScreen,
    'setting': HomeRoutes.settingScreen,
    'notification_setting': HomeRoutes.notificationSettingScreen,
    'security': HomeRoutes.securityScreen,
    'language': HomeRoutes.languageScreen,
    'inpox': HomeRoutes.inpoxScreen,
    'chat_screen': HomeRoutes.chatPageScreen,
    'notification_screen': HomeRoutes.notificationScreen,
  };

  static void navigate(BuildContext context, String? target) {
    final routeName = _targetToRouteName[target];
    if (routeName == null) {
      context.goNamed(HomeRoutes.kHomeScreen);

      return;
    }
    context.goNamed(routeName);
  }
}
