import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/custom_appbar_for_doctor_details.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/doctor_section_view.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/widget_box.dart';

class DoctorDetailsScreenBody extends StatelessWidget {
  const DoctorDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DetailsDoctorCubit>();
    final String fullName = "${cubit.state.doctor!.firstName} ${cubit.state.doctor!.lastName}";

    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              CustomAppbarForDoctorDetails(
                title: fullName,
                widgetBox: WidgetBox(),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 32.h),
                  child: DoctorSectionView(),
                ),
              ),
            ],
          ),
          // this to add shadow impact at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0.h,
            child: IgnorePointer(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.0),
                      Colors.white.withOpacity(0.6),
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
