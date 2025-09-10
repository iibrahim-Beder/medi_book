import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/widgets/search/coustom_search_boutton.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SpecialityButtonListView extends StatelessWidget {
  SpecialityButtonListView({
    super.key,
    required this.onPressed,
    required this.spIndex,
    required this.spCtrl, 
    required this.specialtiesList,
   this.textColor,
   this.starColor, 
   this.isHasShadow, 
   this.padding
   
  });

  final Function(int) onPressed;
  final int spIndex;
  final ItemScrollController spCtrl;
  final List<Speciality> specialtiesList;
  late Color? textColor;
  late Color? starColor;
  final bool? isHasShadow;
  final EdgeInsetsGeometry? padding; 


  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<SearchDoctorCubit>();
    return SizedBox(
        height: 41.h,
        // we have chose scrollable position list instead of listview.builder because we need to scroll to selected item
        child: ScrollablePositionedList.builder(
          initialAlignment: spIndex == 0
              ? 0
              : spIndex == specialtiesList.length - 1
                  ? 0.40
                  : 0.32,
          initialScrollIndex: spIndex,
          scrollDirection: Axis.horizontal,
          itemScrollController: spCtrl,
          itemCount: specialtiesList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: padding ?? EdgeInsets.only(right: 12.w),
                child: CoustomFilterBoutton(
                  text: specialtiesList[index].name,
                  onPressed: (r) => onPressed(r),
                  ischecked: spIndex == index ? true : false,
                  index: index,
                  textColor: textColor,
                  starColor: starColor,
                  hasShadow: isHasShadow ?? false
                ));
          },
        ));
  }
}
