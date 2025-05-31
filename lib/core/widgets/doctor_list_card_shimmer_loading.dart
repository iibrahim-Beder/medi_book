import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';

class DoctorListCardShimmerLoading extends StatelessWidget {
  const DoctorListCardShimmerLoading({super.key, required this.shimmerNumber});

  final int shimmerNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(shimmerNumber, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 24.h, left: 16.w, right: 16.w),
          child: Container(
            height: 130.h,
            decoration: BoxDecoration(
              color: ColorsManager.primarySurface,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.02),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
                // Slightly deeper shadow for layering
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  offset: Offset(0, 6),
                  blurRadius: 12,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ContainerShimmerLoading(height: 110, width: 110),
                  ),
                  horizontalSpace(12),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContainerShimmerLoading(height: 18, width: 180),
                        verticalSpace(15),
                        ContainerShimmerLoading(height: 14, width: 150),
                        verticalSpace(15),
                        ContainerShimmerLoading(height: 14, width: 155),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
