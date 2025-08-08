import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton(
      {super.key,
      this.is3DRemark = true,
      this.colorOfRadius,
      required this.title, 
      this.color, 
      this.style});
  final bool is3DRemark;
  final Color? colorOfRadius;
  final String title;
  final Color? color;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: !is3DRemark
            ? []
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // subtle shadow
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                ),
              ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
              WidgetStatePropertyAll(color ?? ColorsManager.backgroundWhite),
          minimumSize: WidgetStatePropertyAll(Size(109.w, 38.h)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                  color: colorOfRadius ?? ColorsManager.backgroundWhite),
            ),
          ),
          overlayColor: WidgetStatePropertyAll(
            ColorsManager.mainBlue.withOpacity(0.1),
          ),
        ),
        child: Text(
          title,
          style: style ?? TextStyles.font12Neutral60Regular
              .copyWith(color: ColorsManager.mainBlue),
        ),
      ),
    );
  }
}
