import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/core/widgets/setup_error_state.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';

class ContinueButtonBlockSelector extends StatelessWidget {
  const ContinueButtonBlockSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookAppointmentCubit, BookAppointmentState, bool>(
      selector: (state) => state.addInitiateBookingState.isLoading,
      builder: (context, state) {
        final cubit = context.read<BookAppointmentCubit>();

        return CustomButton(
          textValue: 'Continue',
          isLoading: state,
          voidCallback: () {
            cubit.addInitiateBooking();
          },
        );
      },
    );
  }
}

class SetUpErrorStateBlockListener extends StatelessWidget {
  const SetUpErrorStateBlockListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookAppointmentCubit, BookAppointmentState>(
      listenWhen: (previous, current) => previous.addInitiateBookingState!= current.addInitiateBookingState,
      listener: (context, state) {
        if (state.addInitiateBookingState.isLoading) return;
        if (state.addInitiateBookingState.data != null) return;
        setUpErrorState(context, state.addInitiateBookingState.errorMessage , popContext: false);
      },
      child: const SizedBox.shrink(),
    );
  }
}
