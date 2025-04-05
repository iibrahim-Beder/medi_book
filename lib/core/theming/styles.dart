import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';

abstract class TextStyles {
  
  static TextStyle font24EerieBlack700Weight = TextStyle(
    fontSize: 24.sp,
    color: ColorsManager.eerieBlack,
    fontWeight: FontWeight.w700
    
  );

  static TextStyle font32Blue700Weight = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.w700
    
  );

  static TextStyle font11Gray400Weight = TextStyle(
    fontSize: 11.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeight.w700
    
  );

  static TextStyle font16White600Weight = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.white,
    fontWeight: FontWeight.w600
    
  );


  



}
