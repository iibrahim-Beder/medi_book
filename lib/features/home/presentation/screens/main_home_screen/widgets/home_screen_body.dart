import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/list_view/jump_to_last_offset.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_state.dart';
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
    _scrollController.addListener(myListener);

    // jumping
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    // if(state.data.length == 20){
    // // jumpToLastOffset(_scrollController.position.maxScrollExtent - (154 * 5), _scrollController);
    // print("jumped");
    // }
    // });
  }

  void myListener() {
    if (mounted &&
        _scrollController.hasClients &&
        _scrollController.position.maxScrollExtent > 0 &&
        context
                .read<MainHomeCubit>()
                .state
                .recommendedDoctorsState
                .data
                .length ==
            20 &&
        context
            .read<MainHomeCubit>()
            .state
            .recommendedDoctorsState
            .isHasJumped) {
      print(_scrollController.position.maxScrollExtent - (154 * 6));
      _scrollController.jumpTo(
        // _scrollController.position.maxScrollExtent - (154 * 5),
        1917.2689655172398,
      );
      print("Jumped to offset");
      context.read<MainHomeCubit>().markJumped();
    }
  }

  void _onScroll() {
    final state = context.read<MainHomeCubit>().state.recommendedDoctorsState;

    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        state.hasMoreData &&
        !state.isLoadingMore) {
      context.read<MainHomeCubit>().getMoreRecommendedDoctors();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
