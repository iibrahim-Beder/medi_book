import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.textValue,
    required this.voidCallback
  });

  String textValue;
  VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: voidCallback,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: WidgetStateProperty.all(Size(double.infinity, 52.h)),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)))),
        child: Text(
          textValue,
          style: TextStyles.font16White600Weight,
        ));
  }
}
