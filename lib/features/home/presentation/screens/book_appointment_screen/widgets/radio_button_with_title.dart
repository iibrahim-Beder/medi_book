import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/credit_card_options.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/custom_radio_button.dart';

class RadioButtonWithTitle extends StatelessWidget {
  const RadioButtonWithTitle(
      {super.key,
      required this.title,
      required this.onTap,
      required this.selectedValue, 
      required this.isHasCreditOptions, 
      required this.index});

  final String title;
  final Function(int) onTap;
  final String selectedValue;
  final bool isHasCreditOptions;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomRadioButton(
                value: title,
                groupValue: selectedValue,
                onChanged: (_) => onTap(index),
              ),
              horizontalSpace(8),
              Text(title, style: TextStyles.font14TextBodyRegular.copyWith(color: ColorsManager.text100)),
              Spacer(),
            ],
          ),
          isHasCreditOptions ? SizedBox(
            height: 271.h,
            child: Padding(
              padding:  EdgeInsets.only(top: 24.h + 8.h,left: 28.w),
              child: CreditCardOptions(),
            )) : Container(),
        ],
      ),
    );
  }
}
