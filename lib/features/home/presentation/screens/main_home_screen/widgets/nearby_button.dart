import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class NearbyButton extends StatelessWidget {
  const NearbyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // subtle shadow
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(ColorsManager.backgroundWhite),
          minimumSize: WidgetStatePropertyAll(Size(109.w, 38.h)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          overlayColor: WidgetStatePropertyAll(
            ColorsManager.mainBlue.withOpacity(0.1),
          ),
        ),
        child: Text(
          "Find Nearby",
          style: TextStyles.font12Neutral60Regular.copyWith(color: ColorsManager.mainBlue),
        ),
      ),
    );
  }
}
