import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/home/domain/entities/doctor_profile.dart';

class AboutDoctorSection extends StatelessWidget {
  const AboutDoctorSection({super.key, required this.doctorProfile});

  final DoctorProfile doctorProfile;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "About Me",
        style: TextStyles.font16Text100Bold
            .copyWith(fontWeight: FontWeightHelper.semiBold),
      ),
      verticalSpace(12),
      Text(doctorProfile.bio,
        style: TextStyles.font14TextBodyRegular,
      ),
      verticalSpace(24),
      Text(
        "Working Time",
        style: TextStyles.font16Text100Bold
            .copyWith(fontWeight: FontWeightHelper.semiBold),
      ),
      verticalSpace(12),
      Text(
        doctorProfile.workingTime,
        style: TextStyles.font14TextBodyRegular,
      ),
      verticalSpace(24),
      Text(
        "STR",
        style: TextStyles.font16Text100Bold
            .copyWith(fontWeight: FontWeightHelper.semiBold),
      ),
      verticalSpace(12),
      Text(
        doctorProfile.licenceNumber,
        style: TextStyles.font14TextBodyRegular,
      ),
      verticalSpace(24),
      Text(
        "Pengalaman Praktik",
        style: TextStyles.font16Text100Bold
            .copyWith(fontWeight: FontWeightHelper.semiBold),
      ),
      verticalSpace(12),
      Text(
           "${doctorProfile.yearsOfExperience} Of Experience",
        style: TextStyles.font14Text50Medium
            .copyWith(color: ColorsManager.text100),
      ),
      verticalSpace(4),
      Text(
        "${doctorProfile.practiceStartYear} - Now",
        style: TextStyles.font14TextBodyRegular,
      ),
      // this for shadowing effect
      verticalSpace(40)
    ]);
  }
}
