import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/nearby_button.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200.h,
      child: Stack(children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 167.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(image: AssetImage("assets/images/home_blue_pattern.png"),
              fit: BoxFit.cover
              )
            ),
        
          ),
        ),
        
        Positioned(
          right: 15.w,
          bottom: 0,
          child: Image.asset(
            "assets/images/nurse_image.png",
            height: 200.h,
          ),
        ),
        Positioned(
            top: 50.h,
            left: 18.w,
            child: Text(
              "Book and\nschedule with\nnearest doctor",
              style: TextStyles.font15Text100Medium
                  .copyWith(fontSize: 18, color: ColorsManager.backgroundWhite),
            )),
        Positioned(bottom: 15.h, left: 18.w, child: CustomSmallButton(title: 'Find Nearby',)),
      ]),
    );
  }
}


