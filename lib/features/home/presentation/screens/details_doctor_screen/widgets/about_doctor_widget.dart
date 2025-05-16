import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';

class AboutDoctorWidget extends StatelessWidget {
  const AboutDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Text(
        "About Me",
        style: TextStyles.font16Text100Bold
            .copyWith(fontWeight: FontWeightHelper.semiBold),
      ),
      verticalSpace(12),
      Text(
        "Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.",
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
        "Monday - Friday, 08.00 AM - 20.00 PM",
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
        "4726482464",
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
        "RSPAD Gatot Soebroto",
        style: TextStyles.font14Text50Medium
            .copyWith(color: ColorsManager.text100),
      ),
      verticalSpace(4),
        Text(
        "2017 - sekarang",
        style: TextStyles.font14TextBodyRegular,
      ),
      // this for shadowing effect
      verticalSpace(40)
    ]));
  }
}
