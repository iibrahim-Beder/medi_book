
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';

class AvailableTimeSlotsGridVeiwShimmerLoading extends StatelessWidget {
  const AvailableTimeSlotsGridVeiwShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 3,
        padding: EdgeInsets.all(16),
        children: List.generate(8, (index) {
          return ContainerShimmerLoading(
            radius: BorderRadius.circular(14),
            height: 51,
            width: 50,
          );
        }));
  }
}
