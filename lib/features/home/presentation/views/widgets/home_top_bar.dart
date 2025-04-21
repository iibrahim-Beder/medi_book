import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});
  final bool x = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Ibrahim!",
              style: TextStyles.font24Text100Bold.copyWith(fontSize: 18.sp),
            ),
            Text(
              "How Are you Today?",
              style: TextStyles.font11Text80Regular,
            ),
          ],
        ),
         GestureDetector(
          onTap: () => print("Hello Tebsen"),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: ColorsManager.text20, shape: BoxShape.circle),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    'assets/svgs/notifications.svg',
                    fit: BoxFit.contain,
                  ),
                ),
                x? Positioned(
                  right: 14.w,
                  top: 15.h,
                  child: Container(
                    height: 8.h,
                    width: 8.h,
                    decoration: BoxDecoration(
                        color: Colors.redAccent, shape: BoxShape.circle),
                  ),
                ) : SizedBox.square()
              ],
            ),
          ),
        ) 
    
      ],
    );
  }
}
