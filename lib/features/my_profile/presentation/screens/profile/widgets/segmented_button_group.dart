
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/widgets/primary_rounded_button.dart';

class SegmentedButtonGroup extends StatelessWidget {
  const SegmentedButtonGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        PrimaryRoundedButton(
          title: 'My Appointment',
          onTap: () {},
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            bottomLeft: Radius.circular(16.r),
          ),
        ),
        PrimaryRoundedButton(
          title: 'Medical Records',
          onTap: () {},
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16.r),
            bottomRight: Radius.circular(16.r),
          ),
        ),
      ],
    );
  }
}
