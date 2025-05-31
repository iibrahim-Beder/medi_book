import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/custom_radio_button.dart';

class ImageTitleWithDivider extends StatelessWidget {
  const ImageTitleWithDivider(
      {super.key,
      this.onTap,
      required this.selectedValue,
      required this.index,
      required this.title,
      required this.imagePath,
      this.isHasRadio = true});

  final String title;
  final String imagePath;
  final Function(int)? onTap;
  final int index;
  final String selectedValue;
  final bool isHasRadio;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(imagePath),
              horizontalSpace(10),
              Text(
                title,
                style: TextStyles.font14TextBodyRegular
                    .copyWith(color: ColorsManager.text100),
              ),
              Spacer(),
              isHasRadio
                  ? CustomRadioButton(
                      value: title,
                      groupValue: selectedValue,
                      onChanged: onTap != null ? (_) => onTap!(index) : (_) {},
                    )
                  : Container(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Line(
              boxDecoration:
                  BoxDecoration(color: ColorsManager.secondarySurfaceText),
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
