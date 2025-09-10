import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medi_book/core/theming/colors.dart';

class CustomCheckbox extends StatelessWidget {
  CustomCheckbox({super.key, required this.isChecked, required this.onTap});

  final bool isChecked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: 21,
          height: 21,
          decoration: BoxDecoration(
            color: isChecked ? ColorsManager.mainBlue : ColorsManager.text30,
            border: Border.all(
              color:
                  isChecked ? ColorsManager.mainBlue : ColorsManager.grey400,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: isChecked
              ? Icon(
                  Icons.check,
                  color: ColorsManager.text30,
                  size: 18,
                )
              : null,
        ),
      ),
    );
  }
}
