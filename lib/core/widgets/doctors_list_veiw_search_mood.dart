import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';

class DoctorsListVeiwSearchMood extends StatelessWidget {
  const DoctorsListVeiwSearchMood({
    super.key,
    required this.isHasPadding,
    required this.filterDoctorsList, 
  });

  final bool isHasPadding;
  final List<Doctor> filterDoctorsList;
  @override
  Widget build(BuildContext context) {

    return SliverList(
      
      delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
              padding: EdgeInsets.only(bottom: 24.h, left: 16.w, right: 16.w),
              child: index < filterDoctorsList.length
                  ? DoctorsListViewItemAPI(
                      padding: isHasPadding
                          ? EdgeInsets.only(left: 10.w)
                          : EdgeInsets.zero,
                      doctorInfo: filterDoctorsList[index])
                  : Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 25.h),
                    child: Center(
                      child: CircularProgressIndicator(color: ColorsManager.mainBlue,),
                    ),
                  )),
          childCount: filterDoctorsList.length+1),
    );
  }
}

