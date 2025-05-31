import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/list_view/jump_to_last_offset.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';
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

    final cubit = context.read<DetailsDoctorCubit>();
    final controller = cubit.state.reviewsScrollCtrl;

    controller.addListener(() {
      if (cubit.state.selectedSection == EnDoctorSection.reviews) {
        cubit.updateReviewsLastOffset(controller.offset);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final offset = cubit.state.selectedSection == EnDoctorSection.reviews
          ? cubit.state.reviewsLastOffset
          : 0.0;
      jumpToLastOffset(offset, controller);
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<DetailsDoctorCubit, DetailsDoctorState>(
        listenWhen: (previous, current) => previous.selectedSection != current.selectedSection,
        listener: (context, state) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final offset = state.selectedSection == EnDoctorSection.reviews
                ? state.reviewsLastOffset
                : 0.0;
            jumpToLastOffset(offset, state.reviewsScrollCtrl);
          });
        },
        child: Stack(
          children: [
            CustomScrollView(
              controller:
                  context.read<DetailsDoctorCubit>().state.reviewsScrollCtrl,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                CustomAppbarForDoctorDetails(
                  title: 'Dr Randy Wigham',
                  widgetBox: WidgetBox(),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 32.h),
                  sliver: DoctorSectionView(),
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
                  height: 50.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.0),
                        Colors.white.withOpacity(0.7),
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
    context.read<DetailsDoctorCubit>().state.reviewsScrollCtrl.dispose();
    super.dispose();
  }
}
