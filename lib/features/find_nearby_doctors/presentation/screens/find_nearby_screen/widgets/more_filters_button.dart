import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class MoreFiltersButton extends StatelessWidget {
  const MoreFiltersButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Your action here
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: Colors
            .transparent, // no fill color for text button
      ),
      child: Text(
        'More filters',
        style: TextStyles.font14Text100Medium.copyWith(
          color: ColorsManager.mainBlue // or any color you want
        ),
      ),
    );
  }
}
