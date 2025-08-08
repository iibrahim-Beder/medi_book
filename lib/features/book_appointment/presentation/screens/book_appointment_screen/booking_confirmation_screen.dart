import 'package:flutter/material.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/booking_confirmation_screen_body.dart';

class BookingConfirmation extends StatelessWidget {
  const BookingConfirmation({super.key, required this.doctor});

  final Doctor doctor;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: BookingConfirmationScreenBody(doctor: doctor),
    );
  }
}
