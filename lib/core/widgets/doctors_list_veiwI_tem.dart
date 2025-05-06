import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class DoctorsListVeiwItem extends StatelessWidget {
  const DoctorsListVeiwItem(
      {super.key,
      required this.padding,
      required this.doctorInfo});

  final DoctorInfo doctorInfo;


  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: ColorsManager.backgroundWhite,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                doctorInfo.path,
                height: 110.h,
                width: 110.w,
                fit: BoxFit.cover,
              ),
            ),
            horizontalSpace(12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorInfo.name,
                    style: TextStyles.font16Text100Bold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    doctorInfo.workplace,
                    style: TextStyles.font12Text80Medium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFD600),
                      ),
                      Text( "${doctorInfo.rating} (${doctorInfo.reviewNumber} reviews)",
                        style: TextStyles.font12Text80Medium
                            .copyWith(fontSize: 12),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
