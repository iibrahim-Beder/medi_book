
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.isThereNotifications});

  final bool isThereNotifications;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey.shade200,
          
        ),
      ),
      scrolledUnderElevation: 0.0,
      toolbarHeight: 80,
      backgroundColor: ColorsManager.backgroundWhite,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hi, Ibrahim!",
            style: TextStyles.font24Text100Bold.copyWith(fontSize: 18.sp),
          ),
          verticalSpace(5),
          Text(
            "   How Are you Today?",
            style: TextStyles.font11Text80Regular,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: GestureDetector(
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
                  isThereNotifications
                      ? Positioned(
                          right: 14.w,
                          top: 15.h,
                          child: Container(
                            height: 8.h,
                            width: 8.h,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                shape: BoxShape.circle),
                          ),
                        )
                      : SizedBox.square()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
