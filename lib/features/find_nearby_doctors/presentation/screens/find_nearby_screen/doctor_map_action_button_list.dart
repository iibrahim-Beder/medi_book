import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/doctor_map_action_button.dart';

class DoctorMapActionButtonList extends StatelessWidget {
  const DoctorMapActionButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DoctorMapActionButton(
            label: 'Directions',
            onTap: () {},
            icon: Icon(
              Icons.directions,
              size: 24,
              color: ColorsManager.mainBlueDarker, // adjust color as needed
            ),
          ),
          horizontalSpace(8),
          DoctorMapActionButton(
            label: 'Call',
            onTap: () {},
            icon: Icon(Icons.call, size: 20, color: ColorsManager.mainBlueDarker),
          ),
          horizontalSpace(8),
          DoctorMapActionButton(
            label: 'Book',
            onTap: () {},
            icon: Icon(Icons.date_range,
                size: 20, color: ColorsManager.mainBlueDarker),
          ),
          horizontalSpace(8),
          DoctorMapActionButton(
            label: 'Details',
            onTap: () {},
            icon: Icon(Icons.date_range,
                size: 20, color: ColorsManager.mainBlueDarker),
          ),
          horizontalSpace(8),
        ],
      ),
    );
  }
}
