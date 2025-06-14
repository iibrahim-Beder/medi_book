import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/about_doctor_section.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/about_doctor_section_shimmer_loading.dart';

class AboutDoctorSectionBlocBuilder extends StatelessWidget {
  const AboutDoctorSectionBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsDoctorCubit, DetailsDoctorState>(
      buildWhen: (previous, current) =>
          previous.doctorProfileState != current.doctorProfileState,
      builder: (context, state) {
        if (state.doctorProfileState.isLoding) {
          return const AboutDoctorSectionShimmerLoading();
        } else if (state.doctorProfileState.doctorProfile != null) {
          return AboutDoctorSection(doctorProfile: state.doctorProfileState.doctorProfile!);
        } else {
          return Center(
            child: Text("${state.doctorProfileState.errorMessage}"),
          );
        }
      },
    );
  }
}
