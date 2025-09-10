import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';

class CustomRadioButton<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final double size;
  final double borderWidth;
  final Color selectedColor;
  final Color unselectedBorderColor;
  final Color innerCircleColor;

  const CustomRadioButton({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.size = 22.0,
    this.borderWidth = 1.5,
    this.selectedColor = ColorsManager.mainBlueDiluted,
    this.unselectedBorderColor = ColorsManager.mainBlueDiluted,
    this.innerCircleColor = ColorsManager.mainBlue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;

    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? selectedColor : unselectedBorderColor,
            width: borderWidth,
          ),
        ),
        child: isSelected
            ? Center(
                child: Container(
                  width: size / 2,
                  height: size / 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: innerCircleColor,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
