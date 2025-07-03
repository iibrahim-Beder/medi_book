import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/appointment_card.dart';

class AppointmentCardListView extends StatelessWidget {
  const AppointmentCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: const AppointmentCard(),
        ),
      ),
    );
  }
}
