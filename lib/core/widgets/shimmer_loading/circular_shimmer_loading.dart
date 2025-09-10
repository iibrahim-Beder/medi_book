import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:shimmer/shimmer.dart';

class CircularShimmerLoading extends StatelessWidget {
  const CircularShimmerLoading({super.key, this.baseColor, this.highlightColor, required this.height});

  final Color? baseColor;
  final Color? highlightColor;
   final double height;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      highlightColor: baseColor ?? ColorsManager.backgroundWhite,
      baseColor: highlightColor ?? ColorsManager.text30,
      child: Container(
        height: height.h,
        width: height.w,
        decoration: BoxDecoration(
            color: ColorsManager.primarySurface, shape: BoxShape.circle),
      ),
    );
  }
}
