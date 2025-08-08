import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/date_and_time_appointment_section.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/payment_appointment_section.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/summary_appointment_section.dart';

class BookAppointmentSectionView extends StatelessWidget {
  const BookAppointmentSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookAppointmentCubit, BookAppointmentState,
            EnAppointmentSection>(
        selector: (state) => state.currentSection,
        builder: (context, currentSection) {
          switch (currentSection) {
            case EnAppointmentSection.dateAndTime:
              return const DateAndTimeAppointmentSection();
            case EnAppointmentSection.payment:
              return const PaymentAppointmentSection();
            case EnAppointmentSection.summary:
              return const SummaryAppointmentSection();
        }
      });
  }
}
