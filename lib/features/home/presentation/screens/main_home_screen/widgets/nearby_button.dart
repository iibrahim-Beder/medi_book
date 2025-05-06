import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class NearbyButton extends StatelessWidget {
  const NearbyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(ColorsManager.backgroundWhite),
          minimumSize: WidgetStatePropertyAll(Size(109.w,38.h)),
        ),
        child: Text(
          "Find Nearby",
          style: TextStyles.font12Neutral60Regular.copyWith(color: ColorsManager.mainBlue),
        ));
  }
}