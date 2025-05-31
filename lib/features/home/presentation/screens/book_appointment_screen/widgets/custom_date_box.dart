import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class CustomDateBox extends StatelessWidget {
  const CustomDateBox({super.key, required this.day, required this.onTap, required this.isSelected});

  final Day day;
  final Function(Day) onTap;
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
                    day.name,
                    style: TextStyles.font12Text80Medium
                        .copyWith(color: isSelected ? ColorsManager.backgroundWhite : ColorsManager.text50),
                  ),
                ),
                Flexible(
                  // flexible to avoid overflow
                  child: Text(
                    day.date.toString(),
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
