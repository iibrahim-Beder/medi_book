import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/back_to_top_button_bock_builder.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(_onScroll);
  }

  Timer? _paginationThrottle;

  void _onScroll() {
    final cubit = context.read<MainHomeCubit>();
    final state = cubit.state;

    final offset = scrollController.offset;
    final showBackToTopButton =
        state.recommendedDoctorsState.showBackToTopButton;

    //  The logic of showing back to top button (with hysteresis)
    if (offset >= 350 && !showBackToTopButton) {
      cubit.updateBackToTopButtonState(true);
    } else if (offset <= 250 && showBackToTopButton) {
      cubit.updateBackToTopButtonState(false);
    }

    //  Throttle pagination logic to avoid rapid multiple calls
    if (_paginationThrottle?.isActive ?? false) return;

    final paginatedState = state.recommendedDoctorsState.paginatedState;

    final isNearBottom = scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 200;

    if (isNearBottom &&
        paginatedState != null &&
        paginatedState.hasMoreData &&
        !paginatedState.isLoadingMore) {
      // Set throttle to prevent rapid consecutive calls
      cubit.getMoreRecommendedDoctors();
      _paginationThrottle = Timer(const Duration(milliseconds: 300), () {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenBody(scrollController: scrollController),
      floatingActionButton: BackToTopButtonBockBuilder(
        scrollController: scrollController,
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    _paginationThrottle?.cancel();
    super.dispose();
  }
}
