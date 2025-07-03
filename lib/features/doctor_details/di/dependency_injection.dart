
import 'package:get_it/get_it.dart';
import 'package:medi_book/features/doctor_details/data/repos/doctor_details_repo_impl.dart';
import 'package:medi_book/features/doctor_details/domain/repo/doctor_details_repo.dart';
import 'package:medi_book/features/doctor_details/networking/doctor_details_api_service.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';

Future<void> initDoctorDetailsFeature(GetIt getIt) async {
  getIt.registerLazySingleton<DoctorDetailsApiService>(() => DoctorDetailsApiService(getIt()));
  getIt.registerLazySingleton<DoctorDetailsRepo>(() => DoctorDetailsRepoImpl(getIt()));
  getIt.registerFactory<DetailsDoctorCubit>(() => DetailsDoctorCubit(getIt()));

}