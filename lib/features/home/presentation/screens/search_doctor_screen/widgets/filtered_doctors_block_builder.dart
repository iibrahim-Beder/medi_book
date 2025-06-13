import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/doctor_list_flat_shimmer_loading.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_state.dart';

class FilteredDoctorsBlockBuilder extends StatelessWidget {
  const FilteredDoctorsBlockBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchDoctorCubit, SearchDoctorState>(
      buildWhen: (previous, current) =>
          previous.doctorsListState.isLoading != current.doctorsListState.isLoading ||
          previous.doctorsListState.isLoadingMore != current.doctorsListState.isLoadingMore,
      builder: (context, state) {
        if (state.doctorsListState.isLoading) {
          return DoctorListFlatShimmerLoading(
            shimmerNumber: 5,
          );
        } else if (state.doctorsListState.data.isNotEmpty) {
          return DoctorsListVeiw(
            isHasPadding: false,
            doctorsList: state.doctorsListState.data,
            mode: state.doctorsListState.mode!,
            isHasShimmerLoading: state.doctorsListState.isLoadingMore,
          );
        } else {
          return Container();
        }
      },
    );
  }
}
