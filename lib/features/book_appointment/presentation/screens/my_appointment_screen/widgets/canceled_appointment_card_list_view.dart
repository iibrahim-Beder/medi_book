import 'package:flutter/material.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/past_appointment_Card.dart';

class CanceledAppointmentCardListView extends StatelessWidget {
  const CanceledAppointmentCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
              itemBuilder: (context, index) => const PastAppointmentCard(isSuccessCompleted: false,),
              itemCount: 10,
            ));
  }
}