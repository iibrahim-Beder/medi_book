import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/features/home/presentation/views/widgets/doctor_speciality_and_see_all.dart';
import 'package:medi_book/features/home/presentation/views/widgets/doctors_blue_container.dart';
import 'package:medi_book/features/home/presentation/views/widgets/home_top_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              const HomeTopBar(),
              verticalSpace(30),
              const DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialityAndSeeAll()
            ])),
          )
        ],
      ),
    );
  }
}
