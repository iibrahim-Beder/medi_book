import 'package:bloc/bloc.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/enums/en_appointment_section.dart';

// part '../cubit/book_appointment_cubit.freezed.dart';

class BookAppointmentCubit extends Cubit<BookAppointmentState> {
  BookAppointmentCubit() : super(BookAppointmentState.initial());

  void selectAppointmentType(AppointmentType selectedAppointmentType) {
    // Update selected appointment type
    emit(state.copyWith(selectedType: selectedAppointmentType));
  }

  void currentAppointmentSection(EnAppointmentSection currentSection) {
    // Update current appointment section
    emit(state.copyWith(currentSection: currentSection));
  }

  void selectedDay(Day day) {
    // Update selected day
    emit(state.copyWith(selectedDay: day));
  }

  void selectedTimeSlot(String timeSlot) {
    // Update selected time slot
    emit(state.copyWith(selectedTimeSlot: timeSlot));
  }

  void selectedPaymentOption(String paymentOption) {
    // Update selected payment option
    emit(state.copyWith(selectedPaymentOption: paymentOption));
  }

}
