import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_checkbox.dart';

class RememberMeAndForgetPassword extends StatelessWidget {
  const RememberMeAndForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: RowRememberMeAndCheckBox(),
        ),
        TextButton(onPressed: () {}, child: Text("Forgot Password?",style: TextStyles.font12neutral60_400Weight.copyWith(color: ColorsManager.mainBlue),))
      ],
    );
  }
}

class RowRememberMeAndCheckBox extends StatelessWidget {
  const RowRememberMeAndCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(),
        SizedBox(
          width: 12.h,
        ),
        Text(
          "Remember me",
          style: TextStyles.font12neutral60_400Weight,
        )
      ],
    );
  }
}
