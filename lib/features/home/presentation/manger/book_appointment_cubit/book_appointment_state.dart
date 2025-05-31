import 'package:carousel_slider/carousel_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/enums/en_appointment_section.dart';
part 'book_appointment_state.freezed.dart';

@freezed
class BookAppointmentState with _$BookAppointmentState {

  const factory BookAppointmentState({required AppointmentType selectedType,required EnAppointmentSection currentSection,
          required Day selectedDay,required String selectedTimeSlot,
          required CarouselSliderController carouselController,
          required String selectedPaymentOption
          }) = _BookAppointmentState;

  // this default object of BookAppointmentState
  factory BookAppointmentState.initial() => BookAppointmentState(
        selectedType: AppointmentType() = appointmentTypeList[0],
        currentSection: EnAppointmentSection.dateAndTime,
        selectedDay: daysList[0],
        carouselController: CarouselSliderController(),
        selectedTimeSlot: timesList[0],
        selectedPaymentOption: paymentOptionsList[0],
      );


}
