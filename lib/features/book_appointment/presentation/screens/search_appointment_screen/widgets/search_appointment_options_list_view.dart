import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/widgets/search/coustom_search_boutton.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/search_appointment_screen/search_my_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/my_appointment_screen_body.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SearchAppointmentOptionsListView extends StatelessWidget {
  const SearchAppointmentOptionsListView(
      {super.key, required this.selectedFilter});

  final int selectedFilter;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchMyAppointmentCubit>();
    int selectedFilterIndex = cubit.state.selectedFilter.index;
    return SizedBox(
      height: 41.h,
      child: ScrollablePositionedList.builder(
        initialAlignment: selectedFilterIndex == 2 ?  1 : 0.50,
        initialScrollIndex: selectedFilterIndex,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 0.w),
            child: CoustomFilterBoutton(
              text: MyAppointmentType.values[index].name,
              onPressed: (index) => (cubit.updateSelectFilter(MyAppointmentType.values[index])),
              ischecked: selectedFilter == index,
              index: index,
            ),
          );
        },
      ),
    );
  }
}
