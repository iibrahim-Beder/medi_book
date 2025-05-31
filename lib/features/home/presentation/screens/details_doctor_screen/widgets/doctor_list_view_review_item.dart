import 'package:flutter/material.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/image_and_name_and_date_for_review_row.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/stars_and_comment_column.dart';

class DoctorListViewReviewItem extends StatelessWidget {
  const DoctorListViewReviewItem({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageAndNameAndDateForReviewRow(),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Transform.translate(
              offset: Offset(0, -7), child: StarsAndCommentColumn()),
        )
      ],
    );
  }
}
