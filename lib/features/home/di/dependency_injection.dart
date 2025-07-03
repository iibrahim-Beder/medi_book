import 'package:get_it/get_it.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/data/repos/home_repo_impl.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/home/networking/home_api_service.dart';

Future<void> initHomeFeature(GetIt getIt) async {

  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(getIt()));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt()));
  getIt.registerFactory<MainHomeCubit>(() => MainHomeCubit(getIt()));
}
