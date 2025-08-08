import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Line extends StatelessWidget {
  const Line({super.key, this.height = 1, this.width, required this.boxDecoration});
  final double height;
  final double? width;
  final BoxDecoration boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height.h,
      decoration: boxDecoration,
    );
  }
}
