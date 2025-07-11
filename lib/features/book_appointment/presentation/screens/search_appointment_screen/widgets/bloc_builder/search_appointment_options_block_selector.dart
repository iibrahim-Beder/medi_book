import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/search_appointment_screen/search_my_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/search_appointment_screen/search_my_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/my_appointment_screen_body.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/search_appointment_screen/widgets/search_appointment_options_list_view.dart';

class SearchAppointmentOptionsBlockSelector extends StatelessWidget {
  const SearchAppointmentOptionsBlockSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SearchMyAppointmentCubit, SearchMyAppointmentState,MyAppointmentType>(
      selector: (state) => state.selectedFilter,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 4),
          child: SearchAppointmentOptionsListView(selectedFilter: state.index,),
        );
      },
    );
  }
}
