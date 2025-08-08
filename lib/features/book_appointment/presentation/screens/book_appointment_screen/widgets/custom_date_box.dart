import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/book_appointment/domain/entities/available_work_day.dart';

class CustomDateBox extends StatelessWidget {
  const CustomDateBox({super.key, required this.day, required this.onTap, required this.isSelected});

  final AvailableWorkDay day;
  final Function(AvailableWorkDay) onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
      return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: () => onTap(day),
      child: Container(
        width: 51.w,
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.mainBlue : ColorsManager.secondarySurfaceText,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 7.h),
          child: Center(
            child: Column(
              children: [
                // flexible to avoid overflow
                Flexible(
                  child: Text(
                    day.dayOfWeek.substring(0, 3).toUpperCase(),
                    style: TextStyles.font12Text80Medium
                        .copyWith(color: isSelected ? ColorsManager.backgroundWhite : ColorsManager.text50),
                  ),
                ),
                Flexible(
                  // flexible to avoid overflow
                  child: Text(
                    day.day.day.toString().padLeft(2, '0'),
                    style: TextStyles.font14MainBlueSemiBold
                        .copyWith(color: isSelected ? ColorsManager.backgroundWhite : ColorsManager.text50, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
