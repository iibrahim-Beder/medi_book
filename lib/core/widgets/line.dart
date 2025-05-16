import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Line extends StatelessWidget {
  const Line({super.key, this.height = 1, required this.color, this.width});
  final double height;
  final Color color;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height.h,
      color: color,
    );
  }
}
