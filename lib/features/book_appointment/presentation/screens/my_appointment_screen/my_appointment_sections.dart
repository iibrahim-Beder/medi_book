import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/my_appointment_cubit/my_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/appointment_card_list_view.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/canceled_appointment_card_list_view.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/completed_appointment_card_list_view.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/my_appointment_screen_body.dart';

class MyAppointmentSections extends StatelessWidget {
  const MyAppointmentSections({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<MyAppointmentCubit>();
    switch (cubit.state.selectedSection) {
      case MyAppointmentType.upcoming:
        return const AppointmentCardListView();
      case MyAppointmentType.completed:
        return const CompletedAppointmentCardListView();
      case MyAppointmentType.cancelled:
        return const CanceledAppointmentCardListView();
    }
  }
}
