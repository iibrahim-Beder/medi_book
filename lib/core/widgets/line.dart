import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Line extends StatelessWidget {
  const Line({
    super.key,
    this.height = 1
  });
  final double height;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: double.infinity,
      color: Colors.grey.shade200,
    );
  }
}
