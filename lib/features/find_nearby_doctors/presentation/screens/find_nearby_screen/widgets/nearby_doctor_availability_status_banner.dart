import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';

class NearbyDoctorAvailabilityStatusBanner extends StatelessWidget {
  final bool isAvailable;
  final String distanceText;
  final String nextAppointmentText;

  const NearbyDoctorAvailabilityStatusBanner({
    super.key,
    required this.isAvailable,
    required this.distanceText,
    required this.nextAppointmentText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              availabilityText,
              style: TextStyles.font12Neutral60Regular.copyWith(
                  color: isAvailable ? ColorsManager.green : ColorsManager.red),
            ),
            Text(
              ' · $workingHoursText · $distanceText',
              style: TextStyles.font12Neutral60Regular
                  .copyWith(color: ColorsManager.text80),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              'Next Available Slot: ',
              style: TextStyles.font12Neutral60Regular.copyWith(
                  color: ColorsManager.text80,
                  fontWeight: FontWeightHelper.medium),
            ),
            Text(
              nextAppointmentText,
              style: TextStyles.font12Neutral60Regular
                  .copyWith(color: ColorsManager.text80),
            ),
          ],
        ),
      ],
    );
  }

  String get availabilityText {
    if (isAvailable) {
      return 'Available now';
    } else {
      return 'Currently unavailable';
    }
  }

  String get workingHoursText {
    if (isAvailable) {
      return 'Until 5:00 PM';
    } else {
      return 'Opens at 8:00 AM';
    }
  }
}
