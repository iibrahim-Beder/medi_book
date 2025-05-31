import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';
import 'package:shimmer/shimmer.dart';

class SpecialtiesShimmerLoading extends StatelessWidget {
  const SpecialtiesShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
              padding:
                  EdgeInsets.only(right: 25.w, left: index == 0 ? 10.w : 0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Shimmer.fromColors(
                      highlightColor: ColorsManager.primarySurfaceHighlight,
                      baseColor: ColorsManager.primarySurfaceBaseLight,
                    child: Container(
                      height: 56.h,
                      width: 56.w,
                      decoration: BoxDecoration(
                          color: ColorsManager.primarySurface,
                          shape: BoxShape.circle),
                    ),
                  ),
                  verticalSpace(16),
                  ContainerShimmerLoading(
                    height: 12,
                    width: 52, 
                  ),
                ],
              ));
        },
      ),
    );
  }
}
