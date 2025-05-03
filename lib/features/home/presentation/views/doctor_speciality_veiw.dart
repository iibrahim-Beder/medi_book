import 'package:flutter/material.dart';
import 'package:medi_book/features/home/presentation/views/widgets/doctor_speciality_view_body.dart';

class DoctorSpecialityView extends StatelessWidget {
  const DoctorSpecialityView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DoctorSpecialityViewBody(),
    );
  }
}