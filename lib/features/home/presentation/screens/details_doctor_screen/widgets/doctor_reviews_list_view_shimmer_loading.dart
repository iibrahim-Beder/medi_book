import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/circular_shimmer_loading.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';
import 'package:shimmer/shimmer.dart';

class DoctorReviewsListViewShimmerLoading extends StatelessWidget {
  const DoctorReviewsListViewShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 25.h),
              child: const DoctorReviewItemShimmerLoading(),
            );
          },
        ),
      ),
    );
  }
}

class DoctorReviewItemShimmerLoading extends StatelessWidget {
  const DoctorReviewItemShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircularShimmerLoading(
              height: 40,
            ),
            horizontalSpace(10),
            Transform.translate(
              offset: const Offset(0, -5),
              child: ContainerShimmerLoading(
                height: 15,
                width: 100,
                radius: BorderRadius.circular(6),
              ),
            ),
            const Spacer(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Transform.translate(
            offset: const Offset(0, -7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StarsShimmerLoading(),
                verticalSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContainerShimmerLoading(
                      height: 14,
                      width: double.infinity,
                      radius: BorderRadius.circular(6),
                    ),
                    verticalSpace(8),
                    ContainerShimmerLoading(
                      height: 14,
                      width: MediaQuery.of(context).size.width * 0.70,
                      radius: BorderRadius.circular(6),
                    ),
                    verticalSpace(8),
                    ContainerShimmerLoading(
                      height: 14,
                      width: MediaQuery.of(context).size.width * 0.60,
                      radius: BorderRadius.circular(6),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class StarsShimmerLoading extends StatelessWidget {
  const StarsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.text30,
      highlightColor: ColorsManager.backgroundWhite,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          5,
          (index) => Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: SvgPicture.asset(
              "assets/svgs/star.svg",
              color: ColorsManager.text30,
              width: 30,
              height: 30,
            ),
          ),
        ),
      ),
    );
  }
}
