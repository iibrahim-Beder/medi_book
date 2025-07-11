import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';

class CoustomFilterBoutton extends StatelessWidget {
  const CoustomFilterBoutton(
      {super.key,
      required this.text,
      this.isHasStar = false,
      this.ischecked = false,
      required this.onPressed,
      required this.index});

  final String text;
  final bool isHasStar;
  final bool ischecked;
  final void Function(int) onPressed;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: TextButton(
          onPressed: () => onPressed(index),
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
              backgroundColor: ischecked
                  ? ColorsManager.mainBlue
                  : ColorsManager.secondarySurfaceText),
          child: Row(
            children: [
              !isHasStar
                  ? SizedBox.shrink()
                  : Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: SvgPicture.asset(
                        "assets/svgs/star.svg",
                        colorFilter: ischecked
                            ? ColorFilter.mode(
                                ColorsManager.backgroundWhite, BlendMode.srcIn)
                            : ColorFilter.mode(
                                ColorsManager.text40, BlendMode.srcIn),
                      ),
                    ),
              Text(text,
                  style: TextStyles.font14Text50Medium.copyWith(
                      fontWeight: FontWeightHelper.regular,
                      color: ischecked
                          ? ColorsManager.backgroundWhite
                          : ColorsManager.text50)),
            ],
          )),
    );
  }
}
