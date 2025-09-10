import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RedBadge extends StatelessWidget {
  const RedBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: 8.h,
      decoration: BoxDecoration(
          color: Colors.redAccent, shape: BoxShape.circle),
    );
  }
}
