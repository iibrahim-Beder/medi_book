import 'package:bloc/bloc.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/my_appointment_cubit/my_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/my_appointment_screen_body.dart';


class MyAppointmentCubit extends Cubit<MyAppointmentState> {
  MyAppointmentCubit() : super(MyAppointmentState.initial());

  void updateSelectionIntent(MyAppointmentType selectedSection) {
    emit(state.copyWith(selectedSection: selectedSection));
  }
}
