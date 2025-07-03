import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/nearby_button.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        height: 210.h,
        child: Column(
          children: [
            DoctorsListViewItemAPI(
              padding: EdgeInsets.only(left: 10, top: 12),
              doctorInfo: Doctor(
                id: 1,
                firstName: 'John',
                lastName: 'Doe',
                spiciality: 'Cardiologist',
                location: 'New York, NY',
                rating: 4.8,
                numberOfReviews: 120,
                imageUrl:
                    'https://7cb5-102-46-91-223.ngrok-free.app//uploads/images/persons/rendy.png',
              ),
              color: Colors.white,
              isHasMessageIcon: true,
              paddingOfIconMessage: EdgeInsets.only(top: 25, right: 10),
              impageSize: 90,
              isHasLine: true,
              highlightColorShimmer: ColorsManager.backgroundWhite,
              baseColorShimmer: ColorsManager.text30,
              is3DRemark: false,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: CustomSmallButton(
                        title: 'Cancel Appointment',
                        is3DRemark: false,
                        colorOfRadius: ColorsManager.mainBlue,
                        style: TextStyles.font12Neutral60Regular.copyWith(fontWeight: FontWeightHelper.semiBold, color: ColorsManager.mainBlue),
                        
                      ),
                    ),
                  ),
                  horizontalSpace(16),
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: CustomSmallButton(
                        title: 'Reschedule',
                        is3DRemark: false,
                        colorOfRadius: ColorsManager.mainBlue,
                        color: ColorsManager.mainBlue,
                        style: TextStyles.font12Neutral60Regular.copyWith(fontWeight: FontWeightHelper.semiBold, color: ColorsManager.backgroundWhite),
                                    
                              ),
                    ),
                    ),
                  
                ],
              ),
            )
          ],
        ));

  }
}
