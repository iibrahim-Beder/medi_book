import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/home/domain/entities/doctor_review.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_list_view_review_item.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_reviews_list_view_shimmer_loading.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';

class DoctorReviewsList extends StatefulWidget {
  const DoctorReviewsList({
    super.key,
    required this.reviews,
    required this.isHasShimmerLoading,
  });

  final List<DoctorReview> reviews;
  final bool isHasShimmerLoading;

  @override
  State<DoctorReviewsList> createState() => _DoctorReviewsListState();
}

class _DoctorReviewsListState extends State<DoctorReviewsList> {
  late final ItemPositionsListener _itemPositionsListener;

  @override
  void initState() {
    super.initState();

    _itemPositionsListener = ItemPositionsListener.create();

    _itemPositionsListener.itemPositions.addListener(_onScroll);
  }

  void _onScroll() {
    // get list of visible items
    final positions = _itemPositionsListener.itemPositions.value;

    if (positions.isEmpty) return;

    // get the last visible item
    final lastVisibleIndex =
        positions.map((e) => e.index).reduce((a, b) => a > b ? a : b);

    final cubit = context.read<DetailsDoctorCubit>();
    final paginatedState = cubit.state.paginatedState;

    // check if the last visible item in 2 items away
    final isNearBottom = lastVisibleIndex >= widget.reviews.length - 2;

    // the logic of geting more data
    if (isNearBottom &&
        paginatedState.hasMoreData &&
        !paginatedState.isLoadingMore) {
      cubit.geMoreDoctorReviews();
    }

    // covert Iterable<PositionedItem> to List<PositionedItem>
    final visibleItems = positions.toList();

    // * itemLeadingEdge is a value that represents the position of the item in the screen
    //and it would be from 0 to 1

    if (visibleItems.isNotEmpty) {
      final firstVisible = visibleItems.firstWhere(
        // this logic is to get the first item that is visible
        (e) => e.itemLeadingEdge >= 0, orElse: () => visibleItems.first,
      );
      final visibleIndex = firstVisible.index;
      final visibleOffsetApprox = firstVisible.itemLeadingEdge;

      cubit.handleScrollChange(visibleIndex, visibleOffsetApprox);
    }
  }

  @override
  void dispose() {
    _itemPositionsListener.itemPositions.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: ColorsManager.backgroundWhite,
      color: ColorsManager.mainBlue,
      onRefresh: () async {
        context.read<DetailsDoctorCubit>().getDoctorReviews(0);
      },
      child: ScrollablePositionedList.builder(
        initialScrollIndex:
            context.read<DetailsDoctorCubit>().state.reviewsLastindex,
        initialAlignment:
            context.read<DetailsDoctorCubit>().state.reviewsAlignment,
        itemPositionsListener: _itemPositionsListener,
        padding: EdgeInsets.only(top: 16.h, bottom: 40.h),
        itemCount: widget.reviews.length + (widget.isHasShimmerLoading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == widget.reviews.length && widget.isHasShimmerLoading) {
            return const DoctorReviewsListViewShimmerLoading();
          }
          return Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: DoctorListViewReviewItem(review: widget.reviews[index]),
          );
        },
      ),
    );
  }
}
