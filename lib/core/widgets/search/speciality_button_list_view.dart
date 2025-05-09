import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctor_specialitys_list.dart';
import 'package:medi_book/core/widgets/search/coustom_search_boutton.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SpecialityButtonListView extends StatelessWidget {
  SpecialityButtonListView({
    super.key,
    required this.onPressed,
    required this.spIndex,
    required this.spCtrl,
    required this.timeToColor,
  });

  final Function(int) onPressed;
  final int spIndex;
  final ItemScrollController spCtrl;
  final bool timeToColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 41.h,
        // we have chose scrollable position list instead of listview.builder because we need to scroll to selected item
        child: ScrollablePositionedList.builder(
          scrollDirection: Axis.horizontal,
          itemScrollController: spCtrl,
          itemCount: doctorSpecialityList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: CoustomSearchBoutton(
                  text: doctorSpecialityList[index]['name'],
                  onPressed: onPressed,
                  ischecked:
                      spIndex == index && timeToColor ? true : false,
                  index: index,
                ));
          },
        ));
  }
}
