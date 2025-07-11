import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/theming/colors.dart';

class CoustomImageBox extends StatelessWidget {
  const CoustomImageBox(
      {super.key,
      required this.svgPath,
      this.borderColor = ColorsManager.text30,
      this.onTap,
      this.color, this.backgroundColor});

  final String svgPath;
  final Color borderColor;
  final VoidCallback? onTap;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () => {
                if (context.canPop())
                  {
                    context.pop(),
                  }
                else
                  {context.go('/')}
              },
      child: Container(
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
          color: backgroundColor ?? ColorsManager.backgroundWhite,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor),
        ),
        padding: EdgeInsets.all(12),
        child: SvgPicture.asset(
          color: color??ColorsManager.text100,
          svgPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
