import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';

class DoctorLocationSectionShimmerLoading extends StatelessWidget {
  const DoctorLocationSectionShimmerLoading({super.key});

  final Color baseColor = ColorsManager.text30;
  final Color highlightColor = ColorsManager.backgroundWhite;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerShimmerLoading(height: 15, width: 170, radius: BorderRadius.circular(6),baseColor: baseColor,highlightColor: highlightColor,),
        verticalSpace(12),
        ContainerShimmerLoading(height: 10, width: 150, radius: BorderRadius.circular(6),baseColor:baseColor,highlightColor: highlightColor,),
        verticalSpace(12),
        ContainerShimmerLoading(height: 13, width: 180, radius: BorderRadius.circular(6),baseColor:baseColor,highlightColor: highlightColor,),
        verticalSpace(20),
        ContainerShimmerLoading(height: 258, width: 327, radius: BorderRadius.circular(6),baseColor:baseColor,highlightColor: highlightColor,),
      
      ],
    );
  }
}
