import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/home/presentation/views/widgets/doctors_list_veiwI_tem.dart';

class DoctorsListVeiw extends StatelessWidget {
  const DoctorsListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(

      delegate: SliverChildBuilderDelegate(
        
        (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 24.h, left: 16.w, right: 16.w),
          child: DoctorsListVeiwItem(index: index),
        ),
        childCount: 20,
      ),
    );
  }
}



