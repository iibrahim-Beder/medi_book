import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';

class DoctorLocationWidget extends StatelessWidget {
  const DoctorLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Text(
        "Practice Place",
        style: TextStyles.font16Text100Bold
            .copyWith(fontWeight: FontWeightHelper.semiBold),
      ),
      verticalSpace(12),
      Text(
        "Cairo, Egypt",
        style: TextStyles.font14TextBodyRegular,
      ),
      verticalSpace(18),
      Text(
        "Location Map",
        style: TextStyles.font16Text100Bold
            .copyWith(fontWeight: FontWeightHelper.semiBold),
      ),
      verticalSpace(12),
      ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset("assets/images/map.png")),
      verticalSpace(24),
    ]));
  }
}
