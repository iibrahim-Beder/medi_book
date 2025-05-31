import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class CustomTimeSlotBoutton extends StatelessWidget {
  const CustomTimeSlotBoutton(
      {super.key, required this.isSelected, required this.timeSlot, required this.onTap});

  final bool isSelected;
  final String timeSlot;
  final Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: () => onTap(timeSlot),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? ColorsManager.mainBlue
              : ColorsManager.secondarySurfaceText,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: Text(
            timeSlot,
            style: TextStyles.font12Text80Medium.copyWith(
                color: isSelected
                    ? ColorsManager.backgroundWhite
                    : ColorsManager.text50),
          ),
        ),
      ),
    );
  }
}
