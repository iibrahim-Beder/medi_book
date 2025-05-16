import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/list_view/jump_to_last_offset.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/controllers/section_ctrl.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
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

late SectionCtrl _sectionCtrl;

class _DoctorDetailsScreenBodyState extends State<DoctorDetailsScreenBody> {
  @override
  initState() {
    super.initState();

    // take the controller from cubit
    _sectionCtrl = context.read<DetailsDoctorCubit>().sectionCtrl;

    addListener();
  }

  void addListener() {
    _sectionCtrl.reviewsScrollCtrl.addListener(() {
      // we jest record the last offset of the reviews section so we check if we are in the reviews section
      if (_sectionCtrl.selectedSection == EnDoctorSection.reviews) {
        _sectionCtrl.reviewsLastOffset = _sectionCtrl.reviewsScrollCtrl.offset;
      }
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            child: CustomScrollView(
              controller: _sectionCtrl.reviewsScrollCtrl,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                CustomAppbarForDoctorDetails(
                  title: 'Dr Randy Wigham',
                  widgetBox: WidgetBox(),
                  onTap: (enDoctorSection) {
                    setState(() {
                      // to change the selected section for the entire cuit
                      _sectionCtrl.selectedSection = enDoctorSection;

                      if (_sectionCtrl.selectedSection !=
                          EnDoctorSection.reviews) {
                        // jump to the top of the screen when it not reviews section
                        jumpToLastOffset(0, _sectionCtrl.reviewsScrollCtrl);
                        _sectionCtrl.selectedSection = enDoctorSection;
                      } else {
                        // jump to the last offset of the reviews section
                        jumpToLastOffset(_sectionCtrl.reviewsLastOffset,
                            _sectionCtrl.reviewsScrollCtrl);
                      }
                    });
                  },
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 32.h),
                  sliver: DoctorSectionView(),
                ),
              ],
            ),
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
    );
  }
}
