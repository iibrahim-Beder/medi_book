import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/home/presentation/screens/search_doctor_screen/widgets/search_doctor_screen_body.dart';

class SearchDoctorScreen extends StatelessWidget {
  const SearchDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorsManager.text20,
      body: SearchDoctorScreenBody(),
    );
  }
}
