import 'package:flutter/material.dart';
import 'package:medi_book/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';

class MediBookApp extends StatelessWidget {
  const MediBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp.router(
        title: "Medi Book",
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: ColorsManager.mainBlue, 
              brightness: Brightness.light,
            ),
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
