import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_list_view_review_item.dart';

class DoctorReviews extends StatelessWidget {
  const DoctorReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 25.h),
          child: const DoctorListViewReviewItem(),
        );

      },
    );
  }
}
