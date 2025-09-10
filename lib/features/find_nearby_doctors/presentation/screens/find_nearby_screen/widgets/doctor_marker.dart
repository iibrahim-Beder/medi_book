import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';

class DoctorMarker extends StatelessWidget {
  final String imagePath; // asset path

  const DoctorMarker({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.backgroundWhite, width: 2),
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
