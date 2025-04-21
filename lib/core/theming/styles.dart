import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';

abstract class TextStyles {
  static TextStyle font24Text100Bold = TextStyle(
    fontSize: 24.sp,
    color: ColorsManager.text100,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font13Text100Regular = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.text100,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font15Text100Medium = TextStyle(
    fontSize: 15.sp,
    color: ColorsManager.text100,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font11TextBodyBold = TextStyle(
    fontSize: 11.sp,
    color: ColorsManager.textBody,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font11Text80Regular = TextStyle(
    fontSize: 11.sp,
    color: ColorsManager.text80,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font12Neutral60Regular = TextStyle(
      fontSize: 12.sp,
      color: ColorsManager.neutral60,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font14Text50Medium = TextStyle(
      fontSize: 14.sp,
      color: ColorsManager.text50,
      fontWeight: FontWeightHelper.medium);

  static TextStyle font14MainBlueSemiBold = TextStyle(
      fontSize: 14.sp,
      color: ColorsManager.mainBlue,
      fontWeight: FontWeightHelper.semiBold);

  static TextStyle font16BackgroundWhiteSemiBold = TextStyle(
      fontSize: 16.sp,
      color: ColorsManager.backgroundWhite,
      fontWeight: FontWeightHelper.semiBold);
}
