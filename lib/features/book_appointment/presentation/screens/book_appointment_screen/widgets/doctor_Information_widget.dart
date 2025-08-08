import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';

class DoctorInformationWidget extends StatelessWidget {
  const DoctorInformationWidget({super.key, required this.doctor});
  
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Doctor Information",
          style: TextStyles.font16Text100Bold
              .copyWith(fontWeight: FontWeightHelper.semiBold),
        ),
        // 10 the height the the widget already have
        verticalSpace(16.h - 10.h),
        DoctorsListViewItemAPI(
          doctorInfo: doctor,
          padding: EdgeInsets.only(left: 0.w),
          color: ColorsManager.backgroundWhite,
          is3DRemark: false,
          impageSize: 90,
        ),
        verticalSpace(15),
      ],
    );
  }
}
