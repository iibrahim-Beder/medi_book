import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';

class DoctorsListVeiwSearchMood extends StatelessWidget {
  const DoctorsListVeiwSearchMood({
    super.key,
    required this.isHasPadding,
    required this.filterDoctorsList, 
  });

  final bool isHasPadding;
  final List<DoctorInfo> filterDoctorsList;
  @override
  Widget build(BuildContext context) {

    return SliverList(
      
      delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
              padding: EdgeInsets.only(bottom: 24.h, left: 16.w, right: 16.w),
              child: index < filterDoctorsList.length
                  ? DoctorsListVeiwItem(
                      padding: isHasPadding
                          ? EdgeInsets.only(left: 10.w)
                          : EdgeInsets.zero,
                      doctorInfo: filterDoctorsList[index])
                  : Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 25),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )),
          childCount: filterDoctorsList.length+1),
    );
  }
}

