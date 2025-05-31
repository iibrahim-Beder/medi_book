import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/book_appointment_section_view.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/custom_appbar_for_book_appointment.dart';
class BookAppointmentScreenBody extends StatelessWidget {
  const BookAppointmentScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverPadding(
                  padding:
                      EdgeInsets.only(right: 16.w, left: 16.w, bottom: 40.h),
                  sliver: const CustomAppbarForBookAppointment()),
              SliverPadding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 40.h),
                sliver: const BookAppointmentSectionView(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
