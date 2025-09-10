import 'package:flutter/material.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/search_appointment_screen/widgets/search_appointment_screen_body.dart';
class SearchMyAppointmentScreen extends StatelessWidget {
  const SearchMyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body:  SearchAppointmentScreenBody());
  }
}