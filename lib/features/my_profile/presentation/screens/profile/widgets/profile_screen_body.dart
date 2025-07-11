import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/features/home/routes/home_routes.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/widgets/profile_avatar.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/widgets/profile_options_list.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/widgets/segmented_button_group.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/widgets/tappable_svgIcon.dart';

class MyProfileScreenBody extends StatelessWidget {
  const MyProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: ColorsManager.mainBlue,
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ArrowBackBoxAndAddress(
                    title: 'Profile',
                    coustomWidget: TappableSvgIcon(imagePass: 'assets/svgs/setting.svg', onTap: () => context.pushNamed(HomeRoutes.settingScreen),),
                    color: ColorsManager.backgroundWhite,
                    backgroundColor: ColorsManager.mainBlue,
                    borderColor: ColorsManager.mainBlue,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 28,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.backgroundWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 70.h),
                    child: Column(
                      children: [
                        Text(
                          'Ibrahim Beder',
                          style: TextStyles.font20Text100SemiBold,
                        ),
                        verticalSpace(8),
                        Text(
                          'ibrahimbeder@gmail.com',
                          style: TextStyles.font14TextBodyRegular,
                        ),
                        verticalSpace(24),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: SizedBox(
                            height: 58
                                .h, // Make sure this matches your button height
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SegmentedButtonGroup(),
                                Container(
                                  width: 1,
                                  height: 40.h,
                                  color: ColorsManager.text40,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const ProfileOptionsList(),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -60.r,
                    left: MediaQuery.of(context).size.width / 2 - 60.r,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        ProfileAvatar(),
                        Positioned(
                          bottom: 4.r,
                          right: 4.r,
                          child: SvgPicture.asset(
                            'assets/svgs/change_ profile_image.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
