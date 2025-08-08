import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/features/home/presentation/screens/doctor_speciality_screen/widgets/doctor_speciality_grid_view.dart';

class DoctorSpecialityScreenBody extends StatelessWidget {
  const DoctorSpecialityScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 30),
        child: Column(
          children: [
        
           ArrowBackBoxAndAddress(title: "Doctor Speciality",),
           verticalSpace(40),     
           DoctorSpecialityGridView()       
        
          ],
        ),
      ),
    );
  }
}
