import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/coustom_Image_box.dart';

class widgetBox extends StatelessWidget {
  const widgetBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CoustomImageBox(
      svgPath: "assets/svgs/more_vert.svg",
      borderColor: ColorsManager.neutral40,
    );
  }
}
