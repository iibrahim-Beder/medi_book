import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/doctor_speciality_listview_Item.dart';

class DoctorSpecialityGridView extends StatelessWidget {
  const DoctorSpecialityGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final specialties = context.read<MainHomeCubit>().state.specialtiesState.data;
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing:40.h,
      childAspectRatio: 1.2,
      shrinkWrap: true,
     children: List.generate(specialties.length, (index) {
      return DoctorSpecialityListViewItem(index: index,); 
  }),

    );
  }
}
