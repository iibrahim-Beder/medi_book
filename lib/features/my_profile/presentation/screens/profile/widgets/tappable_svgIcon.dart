
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/colors.dart';

class TappableSvgIcon extends StatelessWidget {
  const TappableSvgIcon({
    super.key, required this.imagePass, required this.onTap,
  });

  final String imagePass;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        splashColor: ColorsManager.text100.withOpacity(0.2),
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: SvgPicture.asset(
            imagePass,
            width: 24.r,
            height: 24.r,
          ),
        ),
      ),
    );
  }
}
