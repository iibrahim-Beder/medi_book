import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medi_book/core/di/datasources/init_notification_feature.dart';
import 'package:medi_book/features/auth/di/dependency_injection.dart';
import 'package:medi_book/features/book_appointment/di/dependency_injection.dart';
import 'package:medi_book/features/doctor_details/di/dependency_injection.dart';
import 'package:medi_book/features/home/di/dependency_injection.dart';
import 'package:medi_book/features/message/di/dependency_injection.dart';
import 'package:medi_book/features/search_doctors/di/dependency_injection.dart';

final getIt = GetIt.instance;
final sl = GetIt.instance;
Future<void> initGetIt() async {
   sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  getIt.registerLazySingleton<Dio>(() => Dio());

  initHomeFeature(getIt);
  initDoctorDetailsFeature(getIt);
  initDoctorSearchFeature(getIt);
  initAuthFeature(getIt);
  initBookAppointmentFeature(getIt);
  initMessageFeature(getIt);
  // local datasource
  await initNotificationFeature(getIt);
  
}
