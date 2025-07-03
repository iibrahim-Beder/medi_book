import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/widgets/search/coustom_search_boutton.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SpecialityButtonListView extends StatelessWidget {
  SpecialityButtonListView({
    super.key,
    required this.onPressed,
    required this.spIndex,
    required this.spCtrl,
  });

  final Function(int) onPressed;
  final int spIndex;
  final ItemScrollController spCtrl;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchDoctorCubit>();
    return SizedBox(
        height: 41.h,
        // we have chose scrollable position list instead of listview.builder because we need to scroll to selected item
        child: ScrollablePositionedList.builder(
          initialAlignment: spIndex == 0 ? 0 : spIndex == cubit.specialtiesList!.length-1 ? 0.40 :  0.32,
          initialScrollIndex: spIndex,
          scrollDirection: Axis.horizontal,
          itemScrollController: spCtrl,
          itemCount: cubit.specialtiesList!.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: CoustomSearchBoutton(
                  text: cubit.specialtiesList![index].name,
                  onPressed: (r) => onPressed(r),
                  ischecked: spIndex == index ? true : false,
                  index: index,
                ));
          },
        ));
  }
}
