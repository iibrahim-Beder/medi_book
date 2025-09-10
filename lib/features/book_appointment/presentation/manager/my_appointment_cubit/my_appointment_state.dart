import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/my_appointment_screen_body.dart';
part 'my_appointment_state.freezed.dart';

@freezed
class MyAppointmentState with _$MyAppointmentState {
  const factory MyAppointmentState({required MyAppointmentType selectedSection}) = _MyAppointmentState;

  factory MyAppointmentState.initial() => MyAppointmentState(selectedSection: MyAppointmentType.upcoming);

}
