import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/booking_Information_widget.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/doctor_Information_widget.dart';

class BookingConfirmationScreenBody extends StatelessWidget {
  const BookingConfirmationScreenBody({super.key, required this.doctor});
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          verticalSpace(30),
          ArrowBackBoxAndAddress(
            title: "Details",
            onTap: () {
              context.pop();
            },
          ),
          verticalSpace(60),
          Image.asset(
            'assets/images/confirmed.png',
            height: 65.h,
            width: 65.w,
          ),
          verticalSpace(24),
          // Text('Booking Confirmed', style: TextStyles.font20TextBoldMedium),
          verticalSpace(56),
          BookingInformationWidget(),
          DoctorInformationWidget(
            doctor: doctor,
          ),
          CustomButton(
            textValue: 'Done',
            voidCallback: () {
              context.pop();
            },
          ),
        ]),
      ),
    ));
  }
}
