import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/about_doctor_section.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/shimmer_loading/about_doctor_section_shimmer_loading.dart';

class AboutDoctorSectionBlocBuilder extends StatelessWidget {
  const AboutDoctorSectionBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsDoctorCubit, DetailsDoctorState>(
      buildWhen: (prev, curr) =>
          prev.doctorProfileState != curr.doctorProfileState,
      builder: (context, state) {
        final profileState = state.doctorProfileState;

        if (profileState.isLoding) {
          return const AboutDoctorSectionShimmerLoading();
        }

        if (profileState.doctorProfile != null) {
          return AboutDoctorSection(doctorProfile: profileState.doctorProfile!);
        }

        if (profileState.errorMessage.isNotEmpty) {
          return Center(
            child: Text(
              profileState.errorMessage,
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          );
        }

        // Fallback UI (in case all states are false)
        return const SizedBox.shrink();
      },
    );
  }
}
