import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/doctor_list_flat_shimmer_loading.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_state.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/enums/en_modes.dart';

class RecommendationDoctorBlocBuilder extends StatelessWidget {
  const RecommendationDoctorBlocBuilder({super.key});
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainHomeCubit, MainHomeState>(
      buildWhen: (previous, current) =>
          previous.recommendedDoctorsState.isLoading != current.recommendedDoctorsState.isLoading ||
          previous.recommendedDoctorsState.isLoadingMore != current.recommendedDoctorsState.isLoadingMore,
      builder: (context, state) {
        if (state.recommendedDoctorsState.isLoading) {
          return DoctorListFlatShimmerLoading(shimmerNumber: 5,);
        } else if (state.recommendedDoctorsState.data.isNotEmpty) {
          return DoctorsListVeiw(
            isHasPadding: false,
            doctorsList: state.recommendedDoctorsState.data,
            flutterDoctorsList: [],
            mode: EnModes.defaultMode, 
            isHasShimmerLoading: state.recommendedDoctorsState.hasMoreData,
          );
        } 
        else {
          return Container();
        }
      },
    );
  }
}


