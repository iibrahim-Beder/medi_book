import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/about_doctor_section.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_location_Section.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_reviews_sectiont.dart';

class DoctorSectionView extends StatelessWidget {
  const DoctorSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DetailsDoctorCubit, DetailsDoctorState,
            EnDoctorSection>(
        selector: (state) => state.selectedSection,
        builder: (context, currentSection) {
        
          switch (currentSection) {
            case EnDoctorSection.about:
              return AboutDoctorSection();
            case EnDoctorSection.location:
              return DoctorLocationSection();
            case EnDoctorSection.reviews:
              return DoctorReviewsSection();
          }
        });
  }
}
