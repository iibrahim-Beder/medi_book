import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class DoctorMapActionButton extends StatelessWidget {
  final String label;
  final Icon? icon;
  final VoidCallback onTap;

  const DoctorMapActionButton({
    Key? key,
    required this.label,
    this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
@override
Widget build(BuildContext context) {
  return SizedBox(
    height: 40, // Set your fixed height here
    child: Material(
      color: ColorsManager.mainBlue50,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) icon!,
              if (icon != null) const SizedBox(width: 6),
              Text(
                label,
                style: TextStyles.font13MainBlueDarkerRegular,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}
