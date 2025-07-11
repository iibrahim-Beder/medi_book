import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/di/dependency_injection.dart';
import 'package:medi_book/core/navigation_cubit/navigation_cubit.dart';
import 'package:medi_book/core/routing/app_router.dart';
import 'package:medi_book/medi_book_app.dart';

void main() {
  initGetIt();
  final navigationCubit = NavigationCubit();
  AppRouter.init(navigationCubit);
  runApp(BlocProvider.value(
    value: navigationCubit,
    child: const MediBookApp(),
  ));
}
