import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medi_book/features/auth/di/dependency_injection.dart';
import 'package:medi_book/features/book_appointment/di/dependency_injection.dart';
import 'package:medi_book/features/doctor_details/di/dependency_injection.dart';
import 'package:medi_book/features/home/di/dependency_injection.dart';
import 'package:medi_book/features/search_doctors/di/dependency_injection.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  getIt.registerLazySingleton<Dio>(() => Dio());

  initHomeFeature(getIt);
  initDoctorDetailsFeature(getIt);
  initDoctorSearchFeature(getIt);
  initAuthFeature(getIt);
  initBookAppointmentFeature(getIt);

}
