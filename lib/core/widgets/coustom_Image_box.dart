import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/theming/colors.dart';

class CoustomImageBox extends StatelessWidget {
  const CoustomImageBox({super.key, required this.svgPath, this.borderColor = ColorsManager.text30});

  final String svgPath;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop(context);
      },
      child: Container(
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
          color: ColorsManager.backgroundWhite,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor),
        ),
        padding: EdgeInsets.all(12),
        child: SvgPicture.asset(svgPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
