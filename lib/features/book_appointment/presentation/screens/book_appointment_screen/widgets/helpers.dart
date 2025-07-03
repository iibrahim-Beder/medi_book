import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/payment_Info_bottom_sheet_body.dart';

void showPaymentInfoBottomSheetBody(BuildContext context) {
  final cubit = context.read<BookAppointmentCubit>();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    enableDrag: false,
    backgroundColor: Colors.transparent,
    builder: (_) {
      return BlocProvider.value(
          value: cubit,
          child: const PaymentInfoBottomSheetBody());
    },
  );
}
