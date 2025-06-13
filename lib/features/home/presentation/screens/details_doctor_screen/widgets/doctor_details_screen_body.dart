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
  late ScrollController _reviewsScrollCtrl;
  @override
  initState() {
    super.initState();

    _reviewsScrollCtrl = context.read<DetailsDoctorCubit>().reviewsScrollCtrl;

    // listen to scroll controller events
    _reviewsScrollCtrl.addListener(_onScroll);

    _reviewsScrollCtrl.addListener(() {
      print(_reviewsScrollCtrl.offset);
      context.read<DetailsDoctorCubit>().handleScrollChange(_reviewsScrollCtrl.offset);
    });

    // // // jump to last offset when the widget is built
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   context.read<DetailsDoctorCubit>().jumpToStoredOffset();
    // });
  }

  void _onScroll() {
    context.read<DetailsDoctorCubit>().handleScrollChange(_reviewsScrollCtrl.offset);
    final paginatedState =
        context.read<DetailsDoctorCubit>().state.paginatedState;
    if (_reviewsScrollCtrl.position.pixels >=
            _reviewsScrollCtrl.position.maxScrollExtent - 100 &&
        paginatedState.hasMoreData &&
        !paginatedState.isLoadingMore) {
      context.read<DetailsDoctorCubit>().geMoreDoctorReviews();
    }
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
            CustomScrollView(
              controller: _reviewsScrollCtrl,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                CustomAppbarForDoctorDetails(
                  title: fullName,
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
