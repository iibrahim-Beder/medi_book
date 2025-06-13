import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/home/domain/entities/doctor_location.dart';

class DoctorLocationSection extends StatelessWidget {
  const DoctorLocationSection({super.key, required this.locations});
  // now in ui we will just handel one location but we can handel many locations in the future and we already have the data
  final List<DoctorLocation> locations;
  

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Practice Place",
        style: TextStyles.font16Text100Bold
            .copyWith(fontWeight: FontWeightHelper.semiBold),
      ),
      verticalSpace(12),
      Text(
        "${locations[0].city}, ${locations[0].country}",
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
    ]);
  }
}
