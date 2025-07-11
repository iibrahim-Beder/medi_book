import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/di/dependency_injection.dart';
import 'package:medi_book/core/navigation_cubit/navigation_cubit.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final cuibt = context.watch<NavigationCubit>();
    final currentIndex = cuibt.state.selectedNavigation.index;
    final isShowen = cuibt.state.isShowen;

    return BlocProvider(
      create: (context) => MainHomeCubit(getIt()),
      child: Scaffold(
        body: child,
        bottomNavigationBar: !isShowen
            ? SizedBox.shrink()
            : Container(
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: ColorsManager.backgroundWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: CustomBottomNavigationBar(currentIndex: currentIndex, cuibt: cuibt),
              ),
      ),
    );
  }
}
