import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/custom_radio_button.dart';

class ImageTitleWithDivider extends StatelessWidget {
  const ImageTitleWithDivider(
      {super.key,
      this.onTap,
      this.selectedValue,
      this.index,
      required this.title,
      this.imagePath,
      this.isHasRadio = true,
      this.subtitle1,
      this.subtitle2,
      this.imageCrossAxisAlignment,
      this.button});

  final String title;
  final String? imagePath;
  final Function(int)? onTap;
  final int? index;
  final String? selectedValue;
  final bool isHasRadio;
  final String? subtitle1;
  final String? subtitle2;
  final CrossAxisAlignment? imageCrossAxisAlignment;
  final Widget? button;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageWithTitlesRow(
            imageCrossAxisAlignment: imageCrossAxisAlignment,
            imagePath: imagePath,
            title: title,
            subtitle1: subtitle1,
            subtitle2: subtitle2,
            isHasRadio: isHasRadio,
            selectedValue: selectedValue,
            onTap: onTap,
            index: index,
            button: button),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Line(
            boxDecoration:
                BoxDecoration(color: ColorsManager.secondarySurfaceText),
            height: 1,
          ),
        )
      ],
    );
  }
}

class ImageWithTitlesRow extends StatelessWidget {
  const ImageWithTitlesRow({
    super.key,
    required this.imageCrossAxisAlignment,
     this.imagePath,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.isHasRadio,
    required this.selectedValue,
    required this.onTap,
    required this.index,
    this.button,
  });

  final CrossAxisAlignment? imageCrossAxisAlignment;
  final String? imagePath;
  final String title;
  final String? subtitle1;
  final String? subtitle2;
  final bool isHasRadio;
  final String? selectedValue;
  final Function(int p1)? onTap;
  final int? index;
  final Widget? button;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: imageCrossAxisAlignment ?? CrossAxisAlignment.center,
      children: [
        imagePath != null ? SvgPicture.asset(imagePath!) : SizedBox.shrink(),
        horizontalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitlesColumn(
                title: title, subtitle1: subtitle1, subtitle2: subtitle2),
          ],
        ),
        Spacer(),
        isHasRadio
            ? CustomRadioButton(
                value: title,
                groupValue: selectedValue,
                onChanged: onTap != null ? (_) => onTap!(index!) : (_) {},
              )
            : SizedBox.shrink(),
        button ?? SizedBox.shrink(),
      ],
    );
  }
}

class TitlesColumn extends StatelessWidget {
  const TitlesColumn({
    super.key,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
  });

  final String title;
  final String? subtitle1;
  final String? subtitle2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font14TextBodyRegular
              .copyWith(color: ColorsManager.text100),
        ),
        // subtitle1 != null
        //     ? Text(subtitle1!, style: TextStyles.font12TextBodyRegular)
        //     : SizedBox.shrink(),
        // subtitle2 != null
        //     ? Text(subtitle2!, style: TextStyles.font12TextBodyRegular)
        //     : SizedBox.shrink(),
      ],
    );
  }
}
