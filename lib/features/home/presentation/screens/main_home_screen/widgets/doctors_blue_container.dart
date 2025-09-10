import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/nearby_button.dart';


class DoctorsBlueContainer extends StatelessWidget {
  final double opacity;

  const DoctorsBlueContainer({super.key, required this.opacity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200.h,
      child: Stack(
        children: [
          // 🔧 Add opacity here to the background container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: opacity,
              child: Container(
                height: 167.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/home_blue_pattern.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          // 🔧 Nurse image with same opacity
          Positioned(
            right: 15.w,
            bottom: 0,
            child: Opacity(
              opacity: opacity,
              child: Image.asset(
                "assets/images/nurse_image.png",
                height: 200.h,
              ),
            ),
          ),

          Positioned(
            top: 45.h,
            left: 18.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: opacity,
                  child: Text(
                    "Book and\nschedule with\nnearest doctor",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                CustomSmallButton(
                  title: 'Find Nearby',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
