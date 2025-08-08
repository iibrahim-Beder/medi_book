import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/date_helper.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';

class ImageAndNameAndDateForReviewRow extends StatelessWidget {
  const ImageAndNameAndDateForReviewRow({super.key, this.imagePath, required this.name, required this.date});
  
  final String? imagePath;
  final String name;
  final DateTime date;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            "assets/images/Rectangle.png",
            width: 40.h,
            height: 40.h,
            fit: BoxFit.cover,
          ),
        ),
        horizontalSpace(10),
        Transform.translate(
          offset: Offset(0, -5),
          child: Text(
            name,
            style: TextStyles.font16Text100Bold
                .copyWith(fontWeight: FontWeightHelper.semiBold),
          ),
        ),
        Spacer(),
        Text(
          DateHelper.formatDateToTimeAgo(date),
          style: TextStyles.font14TextBodyRegular.copyWith(fontSize: 12.sp),
        ),
      ],
    );
  }
}
