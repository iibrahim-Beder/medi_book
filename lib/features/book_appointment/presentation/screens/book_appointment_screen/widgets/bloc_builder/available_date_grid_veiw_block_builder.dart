import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/shimmer_loading/available_date_grid_veiw_shimmer_loading.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/available_time_grid_veiw.dart';

class AvailableTimeSlotsGridVeiwBlockBuilder extends StatelessWidget {
  const AvailableTimeSlotsGridVeiwBlockBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookAppointmentCubit, BookAppointmentState>(
      buildWhen: (previous, current) =>
          previous.doctorDayTimeSlotsState != current.doctorDayTimeSlotsState,
      builder: (context, state) {
        if (state.doctorDayTimeSlotsState.isLoading) {
          return AvailableTimeSlotsGridVeiwShimmerLoading();
        } else if (state.doctorDayTimeSlotsState.data != null) {
          return AvailableTimeSlotsGridVeiw();
        } else {
          return Center(
              child: Text("${state.doctorAvailableDaysState.errorMessage}"));
        }
      },
    );
  }
}
