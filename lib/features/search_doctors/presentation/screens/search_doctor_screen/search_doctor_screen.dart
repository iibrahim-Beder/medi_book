import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/search_doctors/presentation/screens/search_doctor_screen/widgets/search_doctor_screen_body.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SearchDoctorScreen extends StatefulWidget {
  const SearchDoctorScreen({super.key});

  @override
  State<SearchDoctorScreen> createState() => _SearchDoctorScreenState();
}

class _SearchDoctorScreenState extends State<SearchDoctorScreen> {
  late final ScrollController _scrollController;
  late final TextEditingController _doctorSearchController;
  Timer? _debounceTimer;
  late final ItemScrollController? _spCtrl;

  @override
  initState() {
    super.initState();
    _scrollController = ScrollController();
    _doctorSearchController = TextEditingController();
    _spCtrl = ItemScrollController();
    _scrollController.addListener(_onScroll);
  }

  Timer? _paginationThrottle;

  void _onScroll() {
    if (_paginationThrottle?.isActive ?? false) return;

    final cubit = context.read<SearchDoctorCubit>();
    final state = cubit.state.doctorsListState;
    // Set the throttle timer after checking scroll position
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      if (state.doctorPaginatedState.hasMoreData &&
          !state.doctorPaginatedState.isLoadingMore) {
        cubit.fetchMoreSearchResults(_doctorSearchController.text);
        _paginationThrottle = Timer(const Duration(milliseconds: 300), () {});
      }
    }
  }

  void onSearchChanged() {
    if (_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 400), () {
      context
          .read<SearchDoctorCubit>()
          .fetchInitialSearchResults(_doctorSearchController.text);
      _scrollController.jumpTo(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.text20,
      body: SearchDoctorScreenBody(
        scrollController: _scrollController,
        onSearchChanged: onSearchChanged,
        doctorSearchController: _doctorSearchController,
        spCtrl: _spCtrl,
      ),
    );
  }

  @override
  dispose() {
    _debounceTimer?.cancel();
    _scrollController.dispose();
    _doctorSearchController.dispose();
    super.dispose();
  }
}
