import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/book_appointment/data/models/doctor_time_slot.dart';

class CustomTimeSlotBoutton extends StatelessWidget {
  const CustomTimeSlotBoutton(
      {super.key, required this.isSelected, required this.timeSlot, required this.onTap});

  final bool isSelected;
  final DoctorTimeSlot timeSlot;
  final Function(DoctorTimeSlot) onTap;

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
            formatDuration(timeSlot.start),
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


String formatDuration(Duration duration) {
  int totalHours = duration.inHours;
  int hour = totalHours % 24;
  int minute = duration.inMinutes % 60;
  
  final suffix = hour >= 12 ? 'PM' : 'AM';
  final hour12 = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
  final minuteStr = minute.toString().padLeft(2, '0');
  
  return '$hour12:$minuteStr $suffix';
}