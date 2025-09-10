import 'package:flutter/material.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/book_appointment_screen_body.dart';

class BookAppointmentScreen extends StatelessWidget {
  const BookAppointmentScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookAppointmentScreenBody(),
    );
  }
}
