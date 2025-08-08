import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/circular_shimmer_loading.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';

class SpecialtiesShimmerLoading extends StatelessWidget {
  const SpecialtiesShimmerLoading({super.key});

  final Color? highlightColor = ColorsManager.primarySurfaceHighlight;
  final Color? baseColor = ColorsManager.primarySurfaceBaseLight;

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
                  EdgeInsets.only(right: 28.w, left: index == 0 ? 10.w : 0),
              child: Column(
                children: [
                  CircularShimmerLoading(height: 56, baseColor: baseColor, highlightColor: highlightColor,),
                  verticalSpace(20),
                  ContainerShimmerLoading(
                    height: 12,
                    width: 52, 
                    baseColor: baseColor,
                    highlightColor: highlightColor,
                  ),
                ],
              ));
        },
      ),
    );
  }
}
