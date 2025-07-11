
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.r,
      height: 120.r,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: ColorsManager.backgroundWhite,
          width: 4.0,
        ),
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/bottom_navigation_my_profile.png',
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
