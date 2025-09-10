import 'package:get_it/get_it.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';

Future<void> initDoctorSearchFeature(GetIt getIt) async {
  getIt.registerFactory<SearchDoctorCubit>(() => SearchDoctorCubit(getIt()));
}
