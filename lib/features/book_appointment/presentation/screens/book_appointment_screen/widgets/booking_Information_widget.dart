import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/custom_appointment_type_row.dart';

class BookingInformationWidget extends StatelessWidget {
  const BookingInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Booking Information",
          style: TextStyles.font16Text100Bold
              .copyWith(fontWeight: FontWeightHelper.semiBold),
        ),
        verticalSpace(24),
        SizedBox(
            height: 79.h,
            child: ImageTitleWithDivider(
              title: 'Date & Time',
              imagePath: 'assets/svgs/date_time.svg',
              isHasRadio: false,
              subtitle1: 'Wednesday, 08 May 2023',
              subtitle2: '08.30 AM',
              imageCrossAxisAlignment: CrossAxisAlignment.start,
            )),
        verticalSpace(16),
        SizedBox(
          height: 58.h,
          child: ImageTitleWithDivider(
            title: 'Appointment Type',
            imagePath: 'assets/svgs/appointment_type.svg',
            subtitle1: 'In Person',
            isHasRadio: false,
          ),
        ),
        verticalSpace(24),
      ],
    );
  }
}
