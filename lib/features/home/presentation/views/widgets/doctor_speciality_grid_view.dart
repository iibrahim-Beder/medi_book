import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctor_specialitys_list.dart';
import 'package:medi_book/features/home/presentation/views/widgets/doctor_speciality_listview_Item.dart';

class DoctorSpecialityGridView extends StatelessWidget {
  const DoctorSpecialityGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing:40.h,
      childAspectRatio: 1.2,
      shrinkWrap: true,
     children: List.generate(doctorSpecialityList.length, (index) {
      return DoctorSpecialityListViewItem(index: index,); 
  }),

    );
  }
}
