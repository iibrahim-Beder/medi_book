import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/home/domain/entities/doctor_review.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_list_view_review_item.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_reviews_list_view_shimmer_loading.dart';

class DoctorReviewsSliverList extends StatelessWidget {
  const DoctorReviewsSliverList(
      {super.key, required this.reviews, required this.isHasShimmerLoading});
  final List<DoctorReview> reviews;
  final bool isHasShimmerLoading;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index == reviews.length && isHasShimmerLoading) {
            return DoctorReviewsListViewShimmerLoading();
          }
          return Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: DoctorListViewReviewItem(review: reviews[index]),
          );
        },
        childCount: reviews.length + (isHasShimmerLoading ? 1 : 0),
      ),
    );
  }
}