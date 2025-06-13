import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_location_Section.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_location_section_shimmer_loading.dart';

class DoctorLocationSectionBlocBuilder extends StatelessWidget {
  const DoctorLocationSectionBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: BlocBuilder<DetailsDoctorCubit, DetailsDoctorState>(
      builder: (context, state) {
        if (state.doctorLocationsState.isLoding) {
          return DoctorLocationSectionShimmerLoading();
        } else if (state.doctorLocationsState.doctorLocations != null) {
          return DoctorLocationSection(locations: state.doctorLocationsState.doctorLocations!,);
        } else {
          return Center(
            child: Text("${state.doctorLocationsState.errorMessage}"),
          );
        }
      },
    ));
  }
}
