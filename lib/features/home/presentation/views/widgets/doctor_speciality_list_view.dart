import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctor_specialitys_list.dart';
import 'package:medi_book/features/home/presentation/views/widgets/doctor_speciality_listview_Item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: doctorSpecialityList.length,
          itemBuilder: (context, index) {
            return DoctorSpecialityListViewItem(index: index,);
          }),
    );
  }
}

