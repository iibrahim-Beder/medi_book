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

class HomeScreenBody extends StatelessWidget {
  final ScrollController scrollController;

  const HomeScreenBody({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        backgroundColor: ColorsManager.backgroundWhite,
        color: ColorsManager.mainBlue,
        onRefresh: () async {
          final cubit = context.read<MainHomeCubit>();
          cubit.getRecommendedDoctors();
          cubit.getSpecialties();
        },
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            const HomeAppBar(
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
