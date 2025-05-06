import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/helpers/doctors_list.dart' as DoctorsList;
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';

class DoctorsListVeiw extends StatelessWidget {
  DoctorsListVeiw(
      {super.key,
      this.isHasPadding = false,
      this.flutterDoctorsList = const [],
      this.searchController});

  final bool isHasPadding;

  final List<DoctorInfo> doctorsList = DoctorsList.doctorsList;
  final List<DoctorInfo> flutterDoctorsList;
  final TextEditingController? searchController;

  bool isSearchMode() {
    if (searchController == null) return false;
    if (searchController!.text.isEmpty) return false;

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 24.h, left: 16.w, right: 16.w),
          child: DoctorsListVeiwItem(
            padding:
                isHasPadding ? EdgeInsets.only(left: 10.w) : EdgeInsets.zero,
            doctorInfo: flutterDoctorsList.isEmpty
                ? doctorsList[index]
                : flutterDoctorsList[index],
          ),
        ),
        childCount: !isSearchMode()
            ? doctorsList.length
            : flutterDoctorsList.length,
      ),
    );
  }
}
