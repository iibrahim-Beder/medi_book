import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/doctor_location_section.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/shimmer_loading/doctor_location_section_shimmer_loading.dart';

class DoctorLocationSectionBlocBuilder extends StatelessWidget {
  const DoctorLocationSectionBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsDoctorCubit, DetailsDoctorState>(
      buildWhen: (prev, curr) =>
          prev.doctorLocationsState != curr.doctorLocationsState,
      builder: (context, state) {
        final locationState = state.doctorLocationsState;

        if (locationState.isLoding) {
          return const DoctorLocationSectionShimmerLoading();
        }

        if (locationState.doctorLocations != null) {
          return DoctorLocationSection(
            locations: locationState.doctorLocations!,
          );
        }

        if (locationState.errorMessage.isNotEmpty) {
          return Center(
            child: Text(
              locationState.errorMessage,
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
