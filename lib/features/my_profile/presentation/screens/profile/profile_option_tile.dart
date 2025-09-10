import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/line.dart';

class ProfileOptionTile extends StatelessWidget {
  const ProfileOptionTile(
      {super.key,
      required this.title,
      required this.onTap,
      this.titleColor,
      this.leftIcon,
      this.rightIcon});

  final String title;
  final VoidCallback onTap;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12.r),
          child: Padding(
            padding: EdgeInsets.all(12.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // SvgPicture.asset(imagePath),
                    leftIcon ?? SizedBox.shrink(),
                    horizontalSpace(10),
                    Text(
                      title,
                      style: TextStyles.font14TextBodyRegular.copyWith(
                        color: titleColor ?? ColorsManager.text100,
                      ),
                    ),
                    Spacer(),
                    rightIcon ?? SizedBox.shrink(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Line(
                    boxDecoration: BoxDecoration(
                      color: ColorsManager.secondarySurfaceText,
                    ),
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
