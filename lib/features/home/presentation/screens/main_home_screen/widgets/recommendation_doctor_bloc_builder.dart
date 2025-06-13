import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/doctor_list_flat_shimmer_loading.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_state.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_state.dart';

class RecommendationDoctorBlocBuilder extends StatelessWidget {
  const RecommendationDoctorBlocBuilder({super.key});
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainHomeCubit, MainHomeState>(
      buildWhen: (previous, current) =>
          previous.recommendedDoctorsState.paginatedState!.isLoading != current.recommendedDoctorsState.paginatedState!.isLoading ||
          previous.recommendedDoctorsState.paginatedState!.isLoadingMore != current.recommendedDoctorsState.paginatedState!.isLoadingMore,
      builder: (context, state) {
        final paginatedState = context.read<MainHomeCubit>().state.recommendedDoctorsState.paginatedState;
        if (paginatedState!.isLoading) {
          return DoctorListFlatShimmerLoading(shimmerNumber: 5,);
        } else if (paginatedState.data.isNotEmpty) {
          return DoctorsListVeiw(
            isHasPadding: false,
            doctorsList: paginatedState.data,
            mode: EnModes.defaultMode, 
            isHasShimmerLoading: paginatedState.isLoadingMore,
          );
        } 
        else {
          return Container();
        }
      },
    );
  }
}


