import 'package:get_it/get_it.dart';
import 'package:medi_book/features/auth/data/repos/auth_repo_impl.dart';
import 'package:medi_book/features/auth/domain/repos/auth_repo.dart';
import 'package:medi_book/features/auth/networking/auth_api_service.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';

Future<void> initAuthFeature(GetIt getIt) async {
  getIt.registerLazySingleton<AuthApiService>(() => AuthApiService(getIt()));
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<SignupCubit>(() => SignupCubit(getIt()));
}
