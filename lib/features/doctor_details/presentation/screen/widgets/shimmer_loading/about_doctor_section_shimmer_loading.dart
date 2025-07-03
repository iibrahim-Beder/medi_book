import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';

class AboutDoctorSectionShimmerLoading extends StatelessWidget {
  const AboutDoctorSectionShimmerLoading({super.key});

  final Color baseColor = ColorsManager.text30;
  final Color highlightColor = ColorsManager.backgroundWhite;
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerShimmerLoading(height: 15, width: 170, radius: BorderRadius.circular(6),baseColor: baseColor,highlightColor: highlightColor,),
          verticalSpace(12),
          ContainerShimmerLoading(height: 140, width: 400, radius: BorderRadius.circular(6),baseColor:baseColor,highlightColor: highlightColor,),
          verticalSpace(20),
          ContainerShimmerLoading(height: 17, width: 170, radius: BorderRadius.circular(3),baseColor:baseColor,highlightColor: highlightColor,),
          verticalSpace(12),
          ContainerShimmerLoading(height: 17, width: 120, radius: BorderRadius.circular(3),baseColor:baseColor,highlightColor: highlightColor,),
        ],
      ),
    );
  }
}
