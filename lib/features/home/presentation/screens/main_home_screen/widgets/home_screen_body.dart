import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/doctor_speciality_and_see_all.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/doctor_speciality_bloc_builder.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/doctors_blue_container.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/home_app_bar.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/recommendation_doctor_and_see_all.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/recommendation_doctor_bloc_builder.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController =
        context.read<MainHomeCubit>().state.recommendedDoctorsState.scrollCtrl!;

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final state = context.read<MainHomeCubit>().state;

    bool showBackToTopButton = state.recommendedDoctorsState.showBackToTopButton;
    
    // the logic of showing back to top button
    if (_scrollController.offset >= 300 && !showBackToTopButton) {
      context.read<MainHomeCubit>().updateBackToTopButtonState(true);
    } else if (_scrollController.offset <= 300 && showBackToTopButton) {
      context.read<MainHomeCubit>().updateBackToTopButtonState(false);
    }
    
    final paginatedState = state.recommendedDoctorsState.paginatedState;

    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        paginatedState!.hasMoreData &&
        !paginatedState.isLoadingMore) {
      context.read<MainHomeCubit>().getMoreRecommendedDoctors();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        backgroundColor: ColorsManager.backgroundWhite,
        color: ColorsManager.mainBlue,
        onRefresh: () async {
          context.read<MainHomeCubit>().getRecommendedDoctors();
          context.read<MainHomeCubit>().getSpecialties();
        },
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            HomeAppBar(
              isThereNotifications: true,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    const DoctorsBlueContainer(),
                    verticalSpace(24),
                    const DoctorSpecialityAndSeeAll(),
                    verticalSpace(16),
                    const SpecialtiesBlocBuilder(),
                    verticalSpace(24),
                    const RecommendationDoctorsAndSeeAll(),
                    verticalSpace(10),
                  ],
                ),
              ),
            ),
            const RecommendationDoctorBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
