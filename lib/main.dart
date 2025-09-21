import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:medi_book/core/di/dependency_injection.dart';
import 'package:medi_book/core/navigation_cubit/navigation_cubit.dart';
import 'package:medi_book/core/routing/app_router.dart';
import 'package:medi_book/core/services/firebase_notification_service.dart';
import 'package:medi_book/features/find_nearby_doctors/data/caching/nearby_doctor_cache_manager.dart';
import 'package:medi_book/features/notifications/data/datasources/notification_local_datasource.dart';
import 'package:medi_book/features/notifications/data/models/notification_hive_model.dart';
import 'package:medi_book/features/notifications/domain/repo/notifications_repo.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/appNotifications_cubit.dart';
import 'package:medi_book/medi_book_app.dart';
import 'package:overlay_support/overlay_support.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  NearbyDoctorCacheManager().startCleanupLoop();

  // Initialize the local notifications plugin instance
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Initialize Hive DB and register the adapter for notifications
  await Hive.initFlutter();
  Hive.registerAdapter(NotificationHiveModelAdapter());
  // Initialize Firebase SDK
  await Firebase.initializeApp();

  // Setup dependency injection container
  await initGetIt();

  // Create instances of cubits for navigation and notifications
  final navigationCubit = NavigationCubit();
  final notificationCubit = NotificationCubit(
      getIt<NotificationsRepo>(), getIt(), flutterLocalNotificationsPlugin);

  // Initialize Firebase notification service with the notification cubit
  await FirebaseNotificationService.init(
      notificationCubit, getIt<NotificationLocalDataSource>());
  
  // handle "app killed" notifications
  await FirebaseNotificationService.handleInitialMessage(
    notificationCubit,
    getIt<NotificationLocalDataSource>(),
  );

  // Initialize app routing with navigation cubit
  AppRouter.init(navigationCubit);

  // Run the app and provide all necessary blocs via MultiBlocProvider
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(value: navigationCubit),
        BlocProvider.value(value: notificationCubit),
      ],
      // OverlaySupport used for in-app notification overlays
      child: OverlaySupport.global(child: const MediBookApp()),
    ),
  );
}


