import 'package:flutter/material.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_review.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/image_and_name_and_date_for_review_row.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/stars_and_comment_column.dart';

class DoctorListViewReviewItem extends StatelessWidget {
  const DoctorListViewReviewItem({super.key, required this.review});

  final DoctorReview review;

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageAndNameAndDateForReviewRow(name: review.patientName, date: review.dateOfReview,),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Transform.translate(
              offset: Offset(0, -7), child: StarsAndCommentColumn(comment: review.comment,)),
        )
      ],
    );
  }
}
