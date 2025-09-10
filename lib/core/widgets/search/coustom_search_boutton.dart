import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';

class CoustomFilterBoutton extends StatelessWidget {
  const CoustomFilterBoutton({
    super.key,
    required this.text,
    this.isHasStar = false,
    this.ischecked = false,
    required this.onPressed,
    required this.index,
    this.textColor,
    this.starColor,
    this.hasShadow = false,
  });

  final String text;
  final bool isHasStar;
  final bool ischecked;
  final void Function(int) onPressed;
  final int index;
  final Color? textColor;
  final Color? starColor;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = ischecked
        ? ColorsManager.mainBlue
        : ColorsManager.secondarySurfaceText;

    return Padding(
      padding: EdgeInsets.only(right: 12.w,bottom: 3),
      child: Material(
  elevation: hasShadow ? 4 : 0, 
  borderRadius: BorderRadius.circular(24.r),
  color: backgroundColor,
  shadowColor: Colors.black.withOpacity(0.12), 
  child: InkWell(
    borderRadius: BorderRadius.circular(24.r),
    onTap: () => onPressed(index),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isHasStar)
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: SvgPicture.asset(
                "assets/svgs/star.svg",
                colorFilter: ColorFilter.mode(
                  ischecked ? Colors.white : starColor ?? ColorsManager.text40,
                  BlendMode.srcIn,
                ),
              ),
            ),
          Text(
            text,
            style: TextStyles.font14Text50Medium.copyWith(
              fontWeight: FontWeightHelper.regular,
              color: ischecked
                  ? Colors.white
                  : textColor ?? ColorsManager.text50,
            ),
          ),
        ],
      ),
    ),
  ),
)
    );
  }
}
