import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_state.dart';
import 'package:medi_book/features/home/presentation/screens/search_doctor_screen/helpers.dart';
import 'package:medi_book/features/home/presentation/screens/search_doctor_screen/widgets/filtered_doctors_block_builder.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/widget_box.dart';

class SearchDoctorScreenBody extends StatefulWidget {
  SearchDoctorScreenBody({super.key});
  @override
  State<SearchDoctorScreenBody> createState() => _SearchDoctorScreenBodyState();
}

class _SearchDoctorScreenBodyState extends State<SearchDoctorScreenBody> {
  late ScrollController _scrollController;
  // late TextEditingController _searchCtrl;
  late DoctorsListState _doctorsListState;

  late FocusNode _keyboardFocusNode;
  late FocusNode _textFieldFocusNode;

  @override
  void initState() {
    super.initState();

    _doctorsListState =
        context.read<SearchDoctorCubit>().state.doctorsListState;

    _scrollController = context.read<SearchDoctorCubit>().scrollCtrl;

    _scrollController.addListener(_onScroll);

    _keyboardFocusNode = FocusNode();
    _textFieldFocusNode = FocusNode();

    // _searchCtrl.addListener(() {
    //   if (_searchCtrl.text.isEmpty) {
    //     print("Hello Tesben");
    //     context.read<SearchDoctorCubit>().getSearchedDoctors();
    //   }
    // });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _keyboardFocusNode.requestFocus();
    });

    // _searchCtrl.addListener(_onSearchChanged);
  }

  void _onScroll() {
    final state = context.read<SearchDoctorCubit>().state.doctorsListState;

    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      switch (state.mode) {
        case EnModes.searchMood:
          state.hasMoreData && !state.isLoadingMore
              ? state.currentPage == 0
                  ? context.read<SearchDoctorCubit>().getSearchedDoctors()
                  : context.read<SearchDoctorCubit>().getMoreSearchedDoctors()
              : null;
          break;
        case EnModes.defaultMode:
          state.hasMoreData && !state.isLoadingMore
              ? state.currentPage == 0
                  ? context.read<SearchDoctorCubit>().getSearchedDoctors()
                  : context.read<SearchDoctorCubit>().getMoreSearchedDoctors()
              : null;
          break;
        default:
          return null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchDoctorCubit, SearchDoctorState>(
      builder: (context, state) {
        final cubit = context.read<SearchDoctorCubit>();

        return SafeArea(
          child: RawKeyboardListener(
            focusNode: _keyboardFocusNode,
            autofocus: true,
            onKey: (RawKeyEvent event) {
              if (event is KeyDownEvent &&  event.logicalKey == LogicalKeyboardKey.backspace) {
                print("Hello Tesben");
                if (cubit.searchCtrl.text.isEmpty) {
                  cubit.getSearchedDoctors();
                }
              }
            },
            child: CustomScrollView(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                CustomAppBarForSearch(
                  title: 'Recommendation Doctors',
                  widgetBox: WidgetBox(),
                  svgPathForTHeSecondRow: "assets/svgs/sort.svg",
                  onWidgetBoxTap: () {
                    showSearchOptionsBottomSheet(context);
                  },
                  onChanged: (_) => cubit.getSearchedDoctors(),
                  searchController: cubit.searchCtrl,
                  focusNode: _textFieldFocusNode,
                ),
                const FilteredDoctorsBlockBuilder(),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    // _focusNode.dispose();
    super.dispose();
  }
}
