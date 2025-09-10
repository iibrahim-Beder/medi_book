import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:medi_book/features/notifications/data/datasources/notification_local_datasource.dart';
import 'package:medi_book/features/notifications/data/models/notification_hive_model.dart';
import 'package:medi_book/features/notifications/data/repos/notifications_repo_Impl.dart';
import 'package:medi_book/features/notifications/domain/repo/notifications_repo.dart';
import 'package:medi_book/features/notifications/networking/notifications_api_service.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/appNotifications_cubit.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> initNotificationFeature(GetIt getIt) async {
  // Register Hive box for local notification storage
  final box = await Hive.openBox<NotificationHiveModel>('notifications');
  getIt.registerSingleton<Box<NotificationHiveModel>>(box);

  // Register Local Data Source
  getIt.registerLazySingleton<NotificationLocalDataSource>(
    () => NotificationLocalDataSource(getIt<Box<NotificationHiveModel>>()),
  );

  // Register API Service
  getIt.registerLazySingleton<NotificationsApiService>(
    () => NotificationsApiService(getIt()),
  );

  // Register Repository
  getIt.registerLazySingleton<NotificationsRepo>(
    () => NotificationsRepoImpl(
      getIt<NotificationLocalDataSource>(),
      getIt<NotificationsApiService>(),
    ),
  );

  // Register FlutterLocalNotificationsPlugin instance
  getIt.registerLazySingleton<FlutterLocalNotificationsPlugin>(
    () => flutterLocalNotificationsPlugin,
  );

  // Register NotificationCubit
  getIt.registerFactory<NotificationCubit>(
    () => NotificationCubit(
      getIt<NotificationsRepo>(),
      getIt<NotificationLocalDataSource>(),
      getIt<FlutterLocalNotificationsPlugin>(),
    ),
  );
}
