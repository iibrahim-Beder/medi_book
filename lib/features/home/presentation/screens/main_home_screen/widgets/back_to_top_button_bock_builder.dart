import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/back_to_top_button.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_state.dart';

class BackToTopButtonBockBuilder extends StatelessWidget {
  const BackToTopButtonBockBuilder({super.key, required this.scrollController});
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<MainHomeCubit, MainHomeState>(
      buildWhen: (previous, current) =>
          previous.recommendedDoctorsState.showBackToTopButton !=
          current.recommendedDoctorsState.showBackToTopButton,
      builder: (context, state) {
        return BackToTopButton(
          controller: scrollController,
          visible: state.recommendedDoctorsState.showBackToTopButton,
        );
      },
    );
  }
}