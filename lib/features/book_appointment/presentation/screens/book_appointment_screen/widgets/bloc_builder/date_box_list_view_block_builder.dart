import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/shimmer_loading/date_box_list_view_shimmer_loading.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/date_box_list_view_with_arrow_Icons.dart';

class DateBoxListViewBlockBuilder extends StatelessWidget {
  const DateBoxListViewBlockBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookAppointmentCubit, BookAppointmentState>(
      buildWhen: (previous, current) => previous.doctorAvailableDaysState != current.doctorAvailableDaysState,
      builder: (context, state) {
        if (state.doctorAvailableDaysState.isLoading) {
          return DateBoxListViewShimmerLoading();
        } else if (state.doctorAvailableDaysState.data != null) {
          return DateBoxListViewWithArrowIcons();
        }
        else{
          return Center(child: Text("${state.doctorAvailableDaysState.errorMessage}"));
        }
      },
    );
  }
}
