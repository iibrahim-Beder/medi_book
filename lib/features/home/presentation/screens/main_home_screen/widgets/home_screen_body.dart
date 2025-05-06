import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/doctor_speciality_and_see_all.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/doctor_speciality_list_view.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/doctors_blue_container.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/home_app_bar.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/recommendation_doctor_and_see_all.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          HomeAppBar(isThereNotifications: true,),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  const DoctorsBlueContainer(),
                  verticalSpace(24),
                  const DoctorSpecialityAndSeeAll(),
                  verticalSpace(16),
                  const DoctorSpecialityListView(),
                  verticalSpace(24),
                  const RecommendationDoctorAndSeeAll(),
                  verticalSpace(10),
                ],
              ),
            ),
          ),
         DoctorsListVeiw(),
        ],
      ),
    );
  }
}


