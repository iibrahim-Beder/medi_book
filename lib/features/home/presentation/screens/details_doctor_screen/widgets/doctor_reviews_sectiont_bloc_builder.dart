import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_reviews_list_view.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_reviews_list_view_shimmer_loading.dart';

class DoctorReviewsSectionBlocBuilder extends StatelessWidget {
  const DoctorReviewsSectionBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsDoctorCubit, DetailsDoctorState>(
      builder: (context, state) {
        if (state.paginatedState.isLoading) {
          return SliverToBoxAdapter(child: DoctorReviewsListViewShimmerLoading());
        } else if (state.paginatedState.data.isNotEmpty) {
          return DoctorReviewsSliverList(
            reviews: state.paginatedState.data,
            isHasShimmerLoading: state.paginatedState.isLoadingMore, 

          );
        } else {
          return Center(child: Text("${state.paginatedState.errorMessage}"));
        }
      },
    );
  }
}
