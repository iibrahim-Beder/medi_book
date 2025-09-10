import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/line.dart';

class DraggableContentSheetAppBar extends StatelessWidget {
  const DraggableContentSheetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            color: ColorsManager.backgroundWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
        child: Column(children: [
          SizedBox(height: 16.h),
          Line(
            boxDecoration: BoxDecoration(
              color: ColorsManager.text50,
              borderRadius: BorderRadius.circular(10.r),
            ),
            width: 40.w,
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            Expanded(
              child:
                  Text('General', style: TextStyles.font18Text100RobotoMedium),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: ColorsManager.text30,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.close,
                size: 18,
                color: Colors.black,
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
