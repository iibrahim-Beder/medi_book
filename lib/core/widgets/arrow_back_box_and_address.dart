import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/coustom_Image_box.dart';

class ArrowBackBoxAndAddress extends StatelessWidget {
  const ArrowBackBoxAndAddress(
      {super.key,
      this.coustomWidget = const SizedBox.shrink(),
      required this.title,
      this.onTap,
      this.color, this.backgroundColor, this.borderColor});

  final String title;
  final Widget coustomWidget;
  final VoidCallback? onTap;
  final Color? color;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CoustomImageBox(
          svgPath: "assets/svgs/arrow_back.svg",
          borderColor: coustomWidget is CoustomImageBox
              ? (coustomWidget as CoustomImageBox).borderColor
              : borderColor?? ColorsManager.text30,
          onTap: onTap,
          color: color,
          backgroundColor: backgroundColor,
  
          
        ),
        Text(
          title,
          style:  TextStyles.font18Text100semiBold.copyWith(color: color?? ColorsManager.text100),
        ),
        coustomWidget
      ],
    );
  }
}
