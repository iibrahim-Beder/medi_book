import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';

class DoctorsListVeiwSearchMood extends StatelessWidget {
  const DoctorsListVeiwSearchMood({
    super.key,
    required this.isHasPadding,
    required this.filterDoctorsList, 
    required this.isHasShimmerLoading,
  });

  final bool isHasPadding;
  final List<Doctor> filterDoctorsList;
  final bool isHasShimmerLoading;
  
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
              padding: EdgeInsets.only(bottom: 24.h, left: 16.w, right: 16.w),
              child: DoctorsListViewItemAPI(
                  padding: isHasPadding
                      ? EdgeInsets.only(left: 10.w)
                      : EdgeInsets.zero,
                  doctorInfo: filterDoctorsList[index])),
          childCount: filterDoctorsList.length),
    );
  }
}
