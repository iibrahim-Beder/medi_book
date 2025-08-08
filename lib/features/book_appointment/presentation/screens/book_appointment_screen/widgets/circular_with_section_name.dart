import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';

class CircularWithSectionName extends StatelessWidget {
  const CircularWithSectionName({
    super.key,
    required this.currentSection,
    required this.isCurrent,
    required this.isBased,
  });

  final EnAppointmentSection currentSection;
  final bool isCurrent;
  final bool isBased;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // this logic for controlling padding beetween circles_with_section_name
      padding: EdgeInsets.only(
          left: currentSection != EnAppointmentSection.summary ? 10.h : 0),
      child: Row(
        children: [
          Column(children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                // circle color logic
                // [1] cheack if we are in current section or not
                // if YES we put the normal clolor if NO we move to the second condition
                // [2] check if the current section is based or not
                color: isCurrent
                    ? ColorsManager.mainBlue
                    : isBased
                        ? ColorsManager.green
                        : ColorsManager.text40,
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: Text(
                (currentSection.index + 1).toString(),
                style: TextStyles.font12Text80Medium
                    .copyWith(color: ColorsManager.backgroundWhite),
              )),
            ),
            verticalSpace(6),
            Text(
              currentSection == EnAppointmentSection.dateAndTime
                  ? "date & Time"
                  : currentSection.name,
              style: TextStyles.font11Text80Regular.copyWith(
                  fontSize: 10.sp,
                  // text style logic
                  // [1] cheack if we are in current section or not
                  // if YES we put the normal clolor if NO we move to the second condition
                  // [2] check if the current section is based or not
                  color: isCurrent
                      ? ColorsManager.text100
                      : isBased
                          ? ColorsManager.green
                          : ColorsManager.neutral60),
            )
          ]),
          // this logic for controlling line beetween circles_with_section_name
          (currentSection.index + 1) != EnAppointmentSection.values.length
              ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Line(
                    boxDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: isBased ? ColorsManager.green : ColorsManager.text40,
                    ),
                    height: 2.5.h,
                    width: 50.w),
              )
              : Container(),
        ],
      ),
    );
  }
}
