import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/book_appointment_section_view.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/custom_appbar_for_book_appointment.dart';

class BookAppointmentScreenBody extends StatelessWidget {
  const BookAppointmentScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16.w, left: 16.w, bottom: 40.h),
              child: const CustomAppbarForBookAppointment(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 40.h),
              child: const BookAppointmentSectionView(),
            ),
          ],
        ),
      ),
    );
  }
}
