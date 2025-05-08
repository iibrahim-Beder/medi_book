import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctor_specialitys_list.dart';
import 'package:medi_book/core/widgets/search/coustom_search_boutton.dart';

class SpecialityButtonListView extends StatelessWidget {
  const SpecialityButtonListView({
    super.key,
    required this.onPressed, 
    required this.specialitySelectedName,
  });

  final void Function(String) onPressed;
  final String specialitySelectedName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41.h,
      child: ListView.builder(
           shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: doctorSpecialityList.length,
          itemBuilder: (context, index) {
            return CoustomSearchBoutton(
              text: doctorSpecialityList[index]['name'],
              onPressed: onPressed,
              ischecked: specialitySelectedName == doctorSpecialityList[index]['name'],
            );
          }),
    );
  }
}
