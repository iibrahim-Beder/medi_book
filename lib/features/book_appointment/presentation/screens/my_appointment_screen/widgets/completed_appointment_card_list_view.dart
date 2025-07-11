
import 'package:flutter/material.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/past_appointment_Card.dart';

class CompletedAppointmentCardListView extends StatelessWidget {
  const CompletedAppointmentCardListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
              itemBuilder: (context, index) => const PastAppointmentCard(isSuccessCompleted: true,),
              itemCount: 10,
            ));
  }
}