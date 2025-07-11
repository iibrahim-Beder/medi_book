import 'package:bloc/bloc.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/search_appointment_screen/search_my_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/my_appointment_screen_body.dart';

class SearchMyAppointmentCubit extends Cubit<SearchMyAppointmentState> {
  final MyAppointmentType selectedFilter;
  SearchMyAppointmentCubit(this.selectedFilter) : super(SearchMyAppointmentState(selectedFilter: selectedFilter));

  void updateSelectFilter(MyAppointmentType selectedFilter) {
    emit(state.copyWith(selectedFilter: selectedFilter));
  }
}
