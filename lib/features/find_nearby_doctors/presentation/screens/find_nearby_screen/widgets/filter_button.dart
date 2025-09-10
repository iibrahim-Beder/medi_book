import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isChecked;
  final bool isHasLeftIcon;
  const FilterButton(
      {super.key,
      required this.onTap,
      required this.isChecked,
      this.isHasLeftIcon = false,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isChecked ? ColorsManager.grayBlue40 : ColorsManager.grey200,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              isChecked && !isHasLeftIcon
                  ? Icon(Icons.check, size: 18, color: ColorsManager.text100)
                  : SizedBox.shrink(),
              SizedBox(width: 6),
              Text(title, style: TextStyles.font14Text100Medium),
              isHasLeftIcon ? horizontalSpace(6) : SizedBox.shrink(),
              isHasLeftIcon
                  ? const Icon(Icons.arrow_drop_down,
                      size: 18, color: Colors.black87)
                  : SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
