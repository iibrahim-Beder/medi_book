import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/custom_appbar_for_doctor_details.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/doctor_section_view.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/widget_box.dart';

class DoctorDetailsScreenBody extends StatefulWidget {
  const DoctorDetailsScreenBody({super.key});

  @override
  State<DoctorDetailsScreenBody> createState() =>
      _DoctorDetailsScreenBodyState();
}

class _DoctorDetailsScreenBodyState extends State<DoctorDetailsScreenBody> {
  @override
  initState() {
    super.initState();

  }
  Widget build(BuildContext context) {
    final cubit = context.read<DetailsDoctorCubit>();
    final String fullName =
        cubit.state.doctor!.firstName + " " + cubit.state.doctor!.lastName;

    return SafeArea(
      child: BlocListener<DetailsDoctorCubit, DetailsDoctorState>(
        listenWhen: (previous, current) =>
            previous.selectedSection != current.selectedSection,
        listener: (context, state) {
          cubit.jumpToStoredOffset();
        },
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
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
