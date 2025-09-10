import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctor_specialitys_list.dart';
import 'package:medi_book/core/widgets/search/coustom_search_boutton.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class RatingButtonListView extends StatelessWidget {
  RatingButtonListView(
      {super.key,
      required this.onPressed,
      required this.ratingIndex,
      required this.itemScrollController,
      this.textColor,
      this.starColor});

  final Function(int) onPressed;

  final int ratingIndex;
  final ItemScrollController itemScrollController;
  late Color? textColor;
  late Color? starColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 41.h,
        child: ScrollablePositionedList.builder(
            initialAlignment: ratingIndex == 0
                ? 0
                : ratingIndex == ratingList.length - 2
                    ? 0.50
                    : 0.32,
            initialScrollIndex: ratingIndex,
            itemScrollController: itemScrollController,
            scrollDirection: Axis.horizontal,
            itemCount: ratingList.length,
            itemBuilder: (context, index) {
              return CoustomFilterBoutton(
                text: ratingList[index]['rate']!,
                onPressed: onPressed,
                ischecked: ratingIndex == index ? true : false,
                isHasStar: true,
                index: index,
                textColor: textColor,
                starColor: starColor
              );
            }));
  }
}
