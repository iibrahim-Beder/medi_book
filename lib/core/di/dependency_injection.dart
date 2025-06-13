import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medi_book/features/auth/networking/auth_api_service.dart';
import 'package:medi_book/core/networking/dio_factory.dart';
import 'package:medi_book/features/auth/data/repos/auth_repo_impl.dart';
import 'package:medi_book/features/auth/domain/repos/auth_repo.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';
import 'package:medi_book/features/home/data/repos/auth_repo_impl.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/home/networking/home_api_service.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();

  getIt.registerLazySingleton<AuthApiService>(() => AuthApiService(dio));
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<SignupCubit>(() => SignupCubit(getIt()));

  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt()));
  getIt.registerFactory<MainHomeCubit>(() => MainHomeCubit(getIt()));
  getIt.registerFactory<SearchDoctorCubit>(() => SearchDoctorCubit(getIt()));
  getIt.registerFactory<DetailsDoctorCubit>(() => DetailsDoctorCubit(getIt()));


}
