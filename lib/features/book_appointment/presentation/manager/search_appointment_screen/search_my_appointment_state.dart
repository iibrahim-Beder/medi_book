import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/my_appointment_screen_body.dart';

part 'search_my_appointment_state.freezed.dart';

@freezed
class SearchMyAppointmentState with _$SearchMyAppointmentState {
  const factory SearchMyAppointmentState({
    required MyAppointmentType selectedFilter,
  }) = _SearchAppointmentState;
}
