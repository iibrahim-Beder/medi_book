import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/payment_option_list_view.dart';

class PaymentAppointmentSection extends StatelessWidget {
  const PaymentAppointmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookAppointmentCubit, BookAppointmentState, String>(
      selector: (state) => state.selectedPaymentOption,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          verticalSpace(24),
          Text(
            "Payment Options",
            style: TextStyles.font16Text100Bold
                .copyWith(fontWeight: FontWeightHelper.semiBold),
          ),
          verticalSpace(24),
          PaymentOptionListView(),
          CustomButton(textValue: "Continue", voidCallback: () {
            context.read<BookAppointmentCubit>().updateCurrentAppointmentSection(EnAppointmentSection.summary);
          })
        ]);
      },
    );
  }
}
