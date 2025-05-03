import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/coustom_arrow_back_box.dart';

class ArrowBackBoxAndAddress extends StatelessWidget {
  const ArrowBackBoxAndAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
      CoustomArrowBackBox(),
    
      Text("Doctor Speciality", style: TextStyles.font18Text100semiBold,),
      SizedBox.shrink()

      ],
    );
  }
}
