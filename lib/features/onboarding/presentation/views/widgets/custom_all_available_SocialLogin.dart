import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/widgets/custom_social_login_widget.dart';

class CustomAllAvailableSociallogin extends StatelessWidget {
  const CustomAllAvailableSociallogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 35.h,
        ),
        CustomSocialLoginWidget(
          svgPath: "assets/svgs/google.svg",
          onTap: () {
            print("sign in with google");
          },
        ),
        SizedBox(
          width: 40.h,
        ),
        CustomSocialLoginWidget(
          svgPath: "assets/svgs/facebooc.svg",
          onTap: () {
            print("sign in with facebook");
          },
        ),
        SizedBox(
          width: 40.h,
        ),
        CustomSocialLoginWidget(
          svgPath: "assets/svgs/apple.svg",
          onTap: () {
            print("sign in with apple");
          },
        ),
        SizedBox(
          width: 40.h,
        ),
      ],
    );
  }
}
