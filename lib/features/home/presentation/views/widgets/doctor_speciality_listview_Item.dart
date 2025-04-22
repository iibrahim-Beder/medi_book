import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctor_specialitys_list.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({
    super.key, required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(doctorSpecialityList[index]['name']),
      child: Padding(
        padding: EdgeInsets.only(right: 25.w, left: index == 0 ? 10.w : 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 56.h,
              width: 56.w,
              decoration: BoxDecoration(
                  color: ColorsManager.primarySurface, shape: BoxShape.circle),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset(
                  doctorSpecialityList[index]['path'],
                  // fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              doctorSpecialityList[index]['name'],
              style: TextStyles.font12Neutral60Regular
                  .copyWith(color: ColorsManager.text100),
            )
          ],
        ),
      ),
    );
  }
}
