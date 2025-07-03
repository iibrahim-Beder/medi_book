import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/radio_button_with_title.dart';

class PaymentOptionListView extends StatelessWidget {
  const PaymentOptionListView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubic = context.read<BookAppointmentCubit>();
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: paymentOptionsList.length,
        itemBuilder: (context, index) {
          return RadioButtonWithTitle(
            title: paymentOptionsList[index],
            index: index,
            selectedValue: cubic.state.selectedPaymentOption,
            onTap: (value) =>
                cubic.updateSelectedPaymentOption(paymentOptionsList[value]),
            isHasCreditOptions: cubic.state.selectedPaymentOption == 'Credit Card' && index == 0  ? true : false,
          );
        });
  }
}
