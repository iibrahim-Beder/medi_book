import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/about_doctor_section_bloc_builder.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_location_section_bloc_builder.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_reviews_sectiont_bloc_builder.dart';

class DoctorSectionView extends StatelessWidget {
  const DoctorSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DetailsDoctorCubit, DetailsDoctorState,
            EnDoctorSection>(
        selector: (state) => state.selectedSection,
        builder: (context, currentSection) {
          final state = context.read<DetailsDoctorCubit>().state;
          switch (currentSection) {
            case EnDoctorSection.about:
              return AboutDoctorSectionBlocBuilder();
            case EnDoctorSection.location:
              // this line most likely will be changed from here
              state.doctorLocationsState.doctorLocations == null? context.read<DetailsDoctorCubit>().getDoctorLocations(0): null;
              return DoctorLocationSectionBlocBuilder();
            case EnDoctorSection.reviews:
              state.paginatedState.data.isEmpty ? context.read<DetailsDoctorCubit>().getDoctorReviews(0) : null;
              return DoctorReviewsSectionBlocBuilder();
          }
        });
  }
}
