import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:shimmer/shimmer.dart';

// ignore: must_be_immutable
class ContainerShimmerLoading extends StatelessWidget {
  ContainerShimmerLoading({
    super.key,
    required this.height,
    required this.width,
    this.radius,
  });

  final double height;
  final double width;
  BorderRadiusGeometry? radius;
  final Color highlightColor = ColorsManager.primarySurfaceHighlight;
  final Color baseColor = ColorsManager.primarySurfaceBaseLight;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      highlightColor: ColorsManager.primarySurfaceHighlight,
      baseColor: ColorsManager.primarySurfaceBaseLight,
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
