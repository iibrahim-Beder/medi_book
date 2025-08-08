import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/widgets/profile_settings_list.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({super.key});

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
                title: 'Setting',
              ),
            ),
            verticalSpace(50),
            ProfileSettingsList()
          ],
        ),
      ),
    );
  }
}
