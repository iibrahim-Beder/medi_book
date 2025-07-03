import 'package:get_it/get_it.dart';
import 'package:medi_book/features/book_appointment/data/repos/book_appointment_repo_Impl.dart';
import 'package:medi_book/features/book_appointment/domain/repo/book_appointment_repo.dart';
import 'package:medi_book/features/book_appointment/networking/book_appointment_api_service.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';

Future<void> initBookAppointmentFeature(GetIt getIt) async {
  
  getIt.registerLazySingleton<BookAppointmentApiService>(() => BookAppointmentApiService(getIt()));
  getIt.registerLazySingleton<BookAppointmentRepo>(() => BookAppointmentRepoImpl(getIt()));
  getIt.registerFactory<BookAppointmentCubit>(() => BookAppointmentCubit(getIt()));
}
