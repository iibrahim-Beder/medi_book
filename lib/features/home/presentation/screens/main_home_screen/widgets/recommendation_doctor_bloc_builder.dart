import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/doctor_list_flat_shimmer_loading.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_state.dart';

class RecommendationDoctorBlocBuilder extends StatelessWidget {
  const RecommendationDoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainHomeCubit, MainHomeState>(
      buildWhen: (previous, current) =>
          previous.recommendedDoctorsState.paginatedState!.isLoading !=
              current.recommendedDoctorsState.paginatedState!.isLoading ||
          previous.recommendedDoctorsState.paginatedState!.isLoadingMore !=
              current.recommendedDoctorsState.paginatedState!.isLoadingMore,
      builder: (context, state) {
        final paginatedState = state.recommendedDoctorsState.paginatedState;
        if (paginatedState == null) return SliverToBoxAdapter(child: SizedBox.shrink());

        if (paginatedState.isLoading) {
          return DoctorListFlatShimmerLoading(
            shimmerNumber: 5,
          );
        } else if (paginatedState.data.isNotEmpty) {
          return DoctorsListVeiw(
            isHasPadding: true,
            doctorsList: paginatedState.data,
            isHasShimmerLoading: state.recommendedDoctorsState.paginatedState!.isLoadingMore,
            
          );
        } else {
          return SliverToBoxAdapter(child: const SizedBox.shrink());
        }
      },
    );
  }
}
