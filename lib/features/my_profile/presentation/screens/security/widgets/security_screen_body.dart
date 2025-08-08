import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/features/my_profile/presentation/screens/notification_settings/widgets/roaming_clock_toggle.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/profile_option_tile.dart';

class SecurityScreenBody extends StatelessWidget {
  const SecurityScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: ArrowBackBoxAndAddress(
                title: 'Security',
              ),
            ),
            verticalSpace(50),
            Column(
              children: [
                SizedBox(
                  height: 75.h,
                  child: ProfileOptionTile(
                    title: 'Remember password',
                    onTap: () {},
                    rightIcon: RoamingClockToggle(),
                  ),
                ),
                SizedBox(
                  height: 75.h,
                  child: ProfileOptionTile(
                    title: 'Face ID',
                    onTap: () {},
                    rightIcon: RoamingClockToggle(),
                  ),
                ),
                SizedBox(
                  height: 75.h,
                  child: ProfileOptionTile(
                    title: 'PIN',
                    onTap: () {},
                    rightIcon: RoamingClockToggle(),
                  ),
                ),
                SizedBox(
                  height: 75.h,
                  child: ProfileOptionTile(
                    title: 'Google Authenticator',
                    onTap: () {},
                    rightIcon: SvgPicture.asset("assets/svgs/chevron-right.svg"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
