import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medi_book/core/networking/api_service.dart';
import 'package:medi_book/core/networking/dio_factory.dart';
import 'package:medi_book/features/auth/data/repos/auth_repo_impl.dart';
import 'package:medi_book/features/auth/domain/repos/auth_repo.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
