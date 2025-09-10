import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class ContainerShimmerLoading extends StatelessWidget {
  ContainerShimmerLoading(
      {super.key,
      required this.height,
      required this.width,
      this.radius,
      this.highlightColor,
      this.baseColor});

  final double height;
  final double width;
  final BorderRadiusGeometry? radius;
  final Color? baseColor;
  final Color? highlightColor;

  // @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      highlightColor: highlightColor ?? ColorsManager.backgroundWhite,
      baseColor: baseColor ?? ColorsManager.text30,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
            color: ColorsManager.primarySurfaceHighlight,
            borderRadius: radius ?? BorderRadius.circular(20),
            boxShadow: []),
      ),
    );
  }
}
