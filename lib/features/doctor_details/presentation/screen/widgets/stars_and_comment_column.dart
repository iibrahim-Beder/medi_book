import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class StarsAndCommentColumn extends StatelessWidget {
  const StarsAndCommentColumn({
    super.key,
    required this.comment,
  });

  final String comment;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      RatingBarIndicator(
          rating: 4.5,
          itemCount: 5,
          itemSize: 30.0,
          itemBuilder: (context, index) => SvgPicture.asset(
                "assets/svgs/star.svg",
                color: ColorsManager.warning100,
              )),
      verticalSpace(10),
      Text(
        comment,
        style: TextStyles.font14TextBodyRegular.copyWith(fontSize: 12.sp),
      ),
    ]);
  }
}
