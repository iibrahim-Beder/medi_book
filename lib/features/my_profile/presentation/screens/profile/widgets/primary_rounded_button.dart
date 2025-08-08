import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class PrimaryRoundedButton extends StatelessWidget {
  const PrimaryRoundedButton({
    super.key, required this.title, required this.onTap, this.borderRadius
  });

  final String title;
  final VoidCallback onTap;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(ColorsManager.text20),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: WidgetStateProperty.all(
              Size(163.w, 58.h),
            ),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16)))),
        child: Text(
          title,
          style: TextStyles.font12Neutral60Regular
              .copyWith(color: ColorsManager.text100),
        ));
  }
}
