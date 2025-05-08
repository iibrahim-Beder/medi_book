import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';

class DoctorsListVeiwDefaultMode extends StatelessWidget {
  const DoctorsListVeiwDefaultMode({
    super.key,
    required this.isHasPadding,
  });

  final bool isHasPadding;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
              padding: EdgeInsets.only(bottom: 24.h, left: 16.w, right: 16.w),
              child: DoctorsListVeiwItem(
                  padding: isHasPadding
                      ? EdgeInsets.only(left: 10.w)
                      : EdgeInsets.zero,
                  doctorInfo: doctorsList[index])),
          childCount: doctorsList.length),
    );
  }
}
