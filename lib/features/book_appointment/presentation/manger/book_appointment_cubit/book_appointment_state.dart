import 'package:carousel_slider/carousel_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/book_appointment/domain/entities/available_work_day.dart';
import 'package:medi_book/features/book_appointment/data/models/doctor_time_slot.dart';
import 'package:medi_book/features/book_appointment/domain/entities/initiate_booking_response.dart';
part 'book_appointment_state.freezed.dart';

enum EnAppointmentSection { dateAndTime,payment,summary}
@freezed
class BookAppointmentState with _$BookAppointmentState {
  const factory BookAppointmentState(
      {DoctorTimeSlot? selectedTimeSlot,
      AvailableWorkDay? seletedDay,
      required bool buttonLoading,
      required AppointmentType selectedType,
      required EnAppointmentSection currentSection,
      required CarouselSliderController carouselController,
      required DoctorDayTimeSlotsState doctorDayTimeSlotsState,
      required DoctorAvailableDaysState doctorAvailableDaysState,
      required AddInitiateBookingState addInitiateBookingState,
      required String selectedPaymentOption}) = _BookAppointmentState;

  // this default object of BookAppointmentState
  factory BookAppointmentState.initial() {
    return BookAppointmentState(
      selectedTimeSlot: null,
      selectedType: appointmentTypeList[0],
      currentSection: EnAppointmentSection.dateAndTime,
      carouselController: CarouselSliderController(),
      selectedPaymentOption: paymentOptionsList[0],
      doctorDayTimeSlotsState: const DoctorDayTimeSlotsState(),
      doctorAvailableDaysState: const DoctorAvailableDaysState(), 
      buttonLoading: false,
      addInitiateBookingState: const AddInitiateBookingState()
    );
  }
}

@freezed
class DoctorDayTimeSlotsState with _$DoctorDayTimeSlotsState {
  const factory DoctorDayTimeSlotsState({
    @Default(false) bool isLoading,
    List<DoctorTimeSlot>? data,
    @Default('') String errorMessage,
  }) = _DoctorDayTimeSlots;
}

@freezed
class DoctorAvailableDaysState with _$DoctorAvailableDaysState {
  const factory DoctorAvailableDaysState({
    @Default(false) bool isLoading,
    List<AvailableWorkDay>? data,
    @Default('') String errorMessage,
  }) = _DoctorAvailableDaysState;
}


@freezed 
class AddInitiateBookingState with _$AddInitiateBookingState{

  const factory AddInitiateBookingState({
    @Default(false) bool isLoading,
    InitiateBookingResponse? data,
    @Default('') String errorMessage,
  }) = _AddInitiateBookingState;
  
}