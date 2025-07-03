import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/doctor_reviews_list_view.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/shimmer_loading/doctor_reviews_list_view_shimmer_loading.dart';

class DoctorReviewsSectionBlocBuilder extends StatelessWidget {
  const DoctorReviewsSectionBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsDoctorCubit, DetailsDoctorState>(
      buildWhen: (prev, curr) => prev.paginatedState != curr.paginatedState,
      builder: (context, state) {
        final paginatedState = state.paginatedState;

        if (paginatedState.isLoading) {
          return const DoctorReviewsListViewShimmerLoading();
        }
    
        if (paginatedState.data.isNotEmpty) {
          return DoctorReviewsList(
            reviews: paginatedState.data,
            isHasShimmerLoading: paginatedState.isLoadingMore,
          );
        }

        if (paginatedState.errorMessage.isNotEmpty) {
          return Center(
            child: Text(
              paginatedState.errorMessage,
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          );
        }

        return const SizedBox.shrink(); // fallback
      },
    );
  }
}
