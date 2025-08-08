import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/doctor_speciality_listview_Item.dart';

class SpecialtiesListView extends StatelessWidget {
  const SpecialtiesListView({
    super.key, 
    required this.specialties,
  });

  final List<Speciality> specialties;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: specialties.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityListViewItem(index: index);
        },
      ),
    );
  }
}
