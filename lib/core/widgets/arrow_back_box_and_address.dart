import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/coustom_arrow_back_box.dart';

class ArrowBackBoxAndAddress extends StatelessWidget {
  const ArrowBackBoxAndAddress(
      {super.key, this.coustomWidget = const SizedBox.shrink(), required this.title});

  final String title;
  final Widget coustomWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CoustomArrowBackBox(),
        Text(
          title,
          style: TextStyles.font18Text100semiBold,
        ),
        coustomWidget
      ],
    );
  }
}
