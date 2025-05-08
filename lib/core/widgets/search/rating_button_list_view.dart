import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctor_specialitys_list.dart';
import 'package:medi_book/core/widgets/search/coustom_search_boutton.dart';

class RatingButtonListView extends StatelessWidget {
  const RatingButtonListView({
    super.key,
    required this.onPressed,
    required this.ratingSelectedName,
  });

  final void Function(String) onPressed;
  final String ratingSelectedName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 41.h,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ratingList.length,
          itemBuilder: (context, index) {
          return CoustomSearchBoutton(
            text: ratingList[index]['rate']!,
            onPressed: onPressed,
            ischecked: ratingSelectedName == ratingList[index]['rate'],
            isHasStar: true,
          );
        }));
  }
}
