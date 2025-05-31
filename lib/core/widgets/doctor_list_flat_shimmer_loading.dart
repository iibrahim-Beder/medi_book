import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';

class DoctorListFlatShimmerLoading extends StatelessWidget {
  const DoctorListFlatShimmerLoading({super.key, required this.shimmerNumber});
  final int shimmerNumber;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
            padding: EdgeInsets.only(bottom: 24.h, right: 16.w),
            child: Container(
                height: 130.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ContainerShimmerLoading(
                          height: 110,
                          width: 110,
                        ),
                      ),
                      horizontalSpace(12),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ContainerShimmerLoading(
                              height: 18,
                              width: 180,
                            ),
                            verticalSpace(15),
                            ContainerShimmerLoading(
                              height: 14,
                              width: 150,
                            ),
                            verticalSpace(15),
                            ContainerShimmerLoading(
                              height: 14,
                              width: 155,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))),
        childCount: shimmerNumber,
      ),
    );
  }
}
