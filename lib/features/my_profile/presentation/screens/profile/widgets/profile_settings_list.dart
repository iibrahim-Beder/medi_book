import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/home/routes/home_routes.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/profile_option_tile.dart';

class ProfileSettingsList extends StatelessWidget {
  const ProfileSettingsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70.h,
          child: ProfileOptionTile(
            title: 'Notification',
            leftIcon: SvgPicture.asset('assets/svgs/notifications.svg'),
            onTap: () => context.pushNamed(HomeRoutes.notificationSettingScreen),
            rightIcon: SvgPicture.asset("assets/svgs/chevron-right.svg"),
          ),
        ),
        SizedBox(
          height: 70.h,
          child: ProfileOptionTile(
            title: 'FAQ',
            leftIcon: SvgPicture.asset('assets/svgs/message-question.svg'),
            onTap: () {},
            rightIcon: SvgPicture.asset("assets/svgs/chevron-right.svg"),
          ),
        ),
        SizedBox(
          height: 70.h,
          child: ProfileOptionTile(
            title: 'Security',
            leftIcon: SvgPicture.asset('assets/svgs/lock.svg'),
            onTap: () => context.pushNamed(HomeRoutes.securityScreen),
            rightIcon: SvgPicture.asset("assets/svgs/chevron-right.svg"),
          ),
        ),
        SizedBox(
          height: 70.h,
          child: ProfileOptionTile(
            title: 'Language',
            leftIcon: SvgPicture.asset('assets/svgs/language-square.svg'),
            onTap: () => context.pushNamed(HomeRoutes.languageScreen),
            rightIcon: SvgPicture.asset("assets/svgs/chevron-right.svg"),
          ),
        ),
        SizedBox(
          height: 70.h,
          child: ProfileOptionTile(
              title: 'Logout',
              leftIcon: SvgPicture.asset('assets/svgs/logout.svg'),
              onTap: () {},
              titleColor: ColorsManager.red,
              rightIcon: Transform.scale(
                scale: 0.8,
                child: SvgPicture.asset("assets/svgs/chevron-right.svg"),
              )),
        ),
      ],
    );
  }
}
