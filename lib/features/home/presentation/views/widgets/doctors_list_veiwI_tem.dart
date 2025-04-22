import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/styles.dart';

class DoctorsListVeiwItem extends StatelessWidget {
  const DoctorsListVeiwItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/rendy.png",
              height: 110.h,
              width: 110.w,
              fit: BoxFit.cover,
            ),
          ), 
          horizontalSpace(12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Dr. Randy Wigham", style: TextStyles.font16Text100Bold,),
              verticalSpace(5),
              Text("General | RSUD Gatot Subroto",style: TextStyles.font12Text80Medium,),
              verticalSpace(5),
              Row(
                children: [
                    Icon(Icons.star, color: Color(0xFFFFD600),),
                  Text("4.8 (4,279 reviews)",style: TextStyles.font12Text80Medium.copyWith(fontSize: 12),),
                ],
              ),
            ],
          )

        ],
      ),
    );
  }
}
