import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_state.dart';
import 'package:medi_book/features/search_doctors/presentation/screens/search_doctor_screen/helpers.dart';
import 'package:medi_book/features/search_doctors/presentation/screens/search_doctor_screen/widgets/filtered_doctors_block_builder.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/widget_box.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SearchDoctorScreenBody extends StatelessWidget {
  final ScrollController scrollController;
  final VoidCallback? onSearchChanged;
  TextEditingController doctorSearchController;
  final ItemScrollController? spCtrl;

  SearchDoctorScreenBody({
    super.key,
    required this.scrollController,
    this.onSearchChanged,
    required this.doctorSearchController, 
    this.spCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchDoctorCubit, SearchDoctorState>(
      buildWhen: (previous, current) =>
          previous.doctorsListState.doctorPaginatedState.data !=
          current.doctorsListState.doctorPaginatedState.data,
      builder: (context, state) {
        return SafeArea(
          child: CustomScrollView(
            controller: scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: NormalAppBarForSearch(
                  title: 'Recommendation Doctors',
                  widgetBox: WidgetBox(),
                  svgPathForTHeSecondRow: "assets/svgs/sort.svg",
                  onWidgetBoxTap: () {
                    showSearchOptionsBottomSheet(context);
                  },
                  onChanged: (_) => onSearchChanged?.call(),
                  searchController: doctorSearchController,
                ),
              ),
              const FilteredDoctorsBlockBuilder(),
            ],
          ),
        );
      },
    );
  }
}
