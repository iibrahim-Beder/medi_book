import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';

class PastAppointmentCard extends StatelessWidget {
  const PastAppointmentCard({super.key, required this.isSuccessCompleted});

  final bool isSuccessCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorsManager.backgroundWhite,
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
        height: 230.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Column(
            children: [
              TextContent(isSuccessCompleted: isSuccessCompleted,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 2.h),
                    child: Line(
                      boxDecoration: BoxDecoration(
                          color: ColorsManager.secondarySurfaceText),
                      height: 1.3,
                    ),
                  ),
                  DoctorsListViewItemAPI(
                    padding: EdgeInsets.only(top: 12),
                    doctorInfo: Doctor(
                      id: 1,
                      firstName: 'John',
                      lastName: 'Doe',
                      spiciality: 'Cardiologist',
                      location: 'New York, NY',
                      rating: 4.8,
                      numberOfReviews: 120,
                      imageUrl:
                          'https://8f8ef18a839b.ngrok-free.app/uploads/images/persons/rendy.png',
                    ),
                    color: Colors.white,
                    isHasMessageIcon: true,
                    paddingOfIconMessage: EdgeInsets.only(top: 25, right: 10),
                    impageSize: 90,
                    highlightColorShimmer: ColorsManager.backgroundWhite,
                    baseColorShimmer: ColorsManager.text30,
                    is3DRemark: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextContent extends StatelessWidget {
  const TextContent({super.key, required this.isSuccessCompleted});

  final bool isSuccessCompleted;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          isSuccessCompleted ?  'Appointment done' : 'Appointment cancelled',
            style: TextStyles.font12Neutral60Regular
                .copyWith(color: isSuccessCompleted ? ColorsManager.green : ColorsManager.red),
          ),
          verticalSpace(8),
          Text(
            'Wed, 17 May | 08.30 AM',
            style: TextStyles.font12Neutral60Regular.copyWith(
                color: ColorsManager.text80,
                fontWeight: FontWeightHelper.medium),
          ),
        ],
      ),
      Spacer(),
      SvgPicture.asset('assets/svgs/more_options.svg'),
    ]);
  }
}
