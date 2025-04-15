import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/styles.dart';

class LogoWithNameLogo extends StatelessWidget {
  const LogoWithNameLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
      SvgPicture.asset("assets/svgs/logo.svg"),
      SizedBox(width: 10.w),
      Text("MediBook",style: TextStyles.font24Text100Bold,)
    

      ],
    );
  }
}
