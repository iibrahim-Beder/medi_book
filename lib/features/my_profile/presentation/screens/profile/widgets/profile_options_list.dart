import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/profile_option_tile.dart';

class ProfileOptionsList extends StatelessWidget {
  const ProfileOptionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          SizedBox(
            height: 90.h,
            child: ProfileOptionTile(
              title: 'Personal Information',
              leftIcon: SvgPicture.asset('assets/svgs/personal_information.svg'),
              onTap: () {},
            ),
          ),
        
          SizedBox(
            height: 90.h,
            child: ProfileOptionTile(
              title: 'My Test & Diagnostic',
              leftIcon: SvgPicture.asset('assets/svgs/my_test_ diagnostic.svg'),
              onTap: () {},
            ),
          ),
      
          SizedBox(
            height: 90.h,
            child: ProfileOptionTile(
              title: 'Payment',
              leftIcon: SvgPicture.asset('assets/svgs/payment.svg'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
