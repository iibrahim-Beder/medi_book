import 'package:flutter/material.dart';
import 'package:medi_book/features/home/presentation/screens/doctor_speciality_screen/widgets/doctor_speciality_screen_body.dart';

class DoctorSpecialityscreen extends StatelessWidget {
  const DoctorSpecialityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DoctorSpecialityScreenBody(),
    );
  }
}