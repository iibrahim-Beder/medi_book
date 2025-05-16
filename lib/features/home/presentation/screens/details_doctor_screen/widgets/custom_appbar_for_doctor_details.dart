import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/text_with_Line_button_list_view.dart';

class CustomAppbarForDoctorDetails extends StatelessWidget {
  const CustomAppbarForDoctorDetails({
    super.key,
    required this.title,
    required this.widgetBox,
    required this.onTap,
  });

  final String title;
  final Widget widgetBox;
  final void Function(EnDoctorSection) onTap;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        pinned: true,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0.0,
        toolbarHeight: 285.h,
        backgroundColor: ColorsManager.backgroundWhite,
        flexibleSpace: Column(
          children: [
            verticalSpace(30),
            ArrowBackBoxAndAddress(
              title: title,
              coustomWidget: widgetBox,
            ),
            verticalSpace(20),
            DoctorsListVeiwItem(
              doctorInfo: doctorsList[0],
              padding: EdgeInsets.only(left: 0.w),
              isHasMessageIcon: true,
            ),
            verticalSpace(20),
            TextWithLineButtonListView(
              onTap: onTap,
            ),
          ],
        ));
  }
}
