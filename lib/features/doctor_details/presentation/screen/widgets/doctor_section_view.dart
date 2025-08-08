import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/bloc_builder/about_doctor_section_bloc_builder.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/bloc_builder/doctor_location_section_bloc_builder.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/bloc_builder/doctor_reviews_sectiont_bloc_builder.dart';

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
              state.doctorLocationsState.doctorLocations == null? context.read<DetailsDoctorCubit>().fetchDoctorLocations(0): null;
              return DoctorLocationSectionBlocBuilder();
            case EnDoctorSection.reviews:
              state.paginatedState.data.isEmpty ? context.read<DetailsDoctorCubit>().fetchDoctorReviews(0) : null;
              return DoctorReviewsSectionBlocBuilder();
          }
        });
  }
}
