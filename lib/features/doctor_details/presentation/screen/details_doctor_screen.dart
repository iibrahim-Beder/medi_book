import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/doctor_details_screen_body.dart';

class DetailsDoctorScreen extends StatelessWidget {
  const DetailsDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final doctor = context.read<DetailsDoctorCubit>().state.doctor;
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 8.h),
          child: DoctorDetailsScreenBody(),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 24.h, left: 24.w, right: 24.w),
          child: CustomButton(
            textValue: 'Make An Appointment',
            voidCallback: () {
              context.pushReplacement(
                '/bookAppointmentScreen',
                extra: doctor,
              );
            },
          ),
        ));
  }
}
