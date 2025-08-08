import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/doctor_list_flat_shimmer_loading.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_state.dart';

class FilteredDoctorsBlockBuilder extends StatelessWidget {
  const FilteredDoctorsBlockBuilder({super.key});

  static const int _shimmerCount = 5;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchDoctorCubit, SearchDoctorState>(
      buildWhen: (previous, current) {
        final prev = previous.doctorsListState.doctorPaginatedState;
        final curr = current.doctorsListState.doctorPaginatedState;

        return prev.isLoading != curr.isLoading ||
            prev.isLoadingMore != curr.isLoadingMore;
      },
      builder: (context, state) {
        final paginatedState = state.doctorsListState.doctorPaginatedState;

        if (paginatedState.isLoading) {
          return const DoctorListFlatShimmerLoading(
            shimmerNumber: _shimmerCount,
          );
        }

        if (paginatedState.data.isNotEmpty) {
          return DoctorsListVeiw(
            isHasPadding: true,
            doctorsList: paginatedState.data,
            isHasShimmerLoading: paginatedState.isLoadingMore,
            color: ColorsManager.primarySurface,
            
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
