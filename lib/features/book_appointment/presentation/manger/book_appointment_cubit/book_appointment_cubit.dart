import 'package:bloc/bloc.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/book_appointment/domain/entities/available_work_day.dart';
import 'package:medi_book/features/book_appointment/data/models/doctor_time_slot.dart';
import 'package:medi_book/features/book_appointment/domain/repo/book_appointment_repo.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/dtos/initiate_booking_command_dto.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';

class BookAppointmentCubit extends Cubit<BookAppointmentState> {
  final BookAppointmentRepo bookAppointmentRepo;
  final Doctor? doctor;

  BookAppointmentCubit(this.bookAppointmentRepo, [this.doctor])
      : super(BookAppointmentState.initial()) {
    fetchDoctorDayTimeSlots(DateTime.now(), doctorID: doctor?.id);
    fetchDoctorAvailableDays(doctor!.id);
  }

  void updateSelectAppointmentType(AppointmentType selectedAppointmentType) {
    emit(state.copyWith(selectedType: selectedAppointmentType));
  }

  void updateCurrentAppointmentSection(EnAppointmentSection currentSection) {
    if (state.addInitiateBookingState.data == null) return;
    emit(state.copyWith(currentSection: currentSection));
  }

  void updateSelectedDay(AvailableWorkDay day) {
    emit(state.copyWith(seletedDay: day));
  }

  void updateSelectedTimeSlot(DoctorTimeSlot timeSlot) {
    emit(state.copyWith(selectedTimeSlot: timeSlot));
  }

  void updateSelectedPaymentOption(String paymentOption) {
    emit(state.copyWith(selectedPaymentOption: paymentOption));
  }

  Future<void> fetchDoctorDayTimeSlots(DateTime day, {int? doctorID}) async {
    final id = doctorID ?? doctor!.id;
    _emitLoadingDoctorDayTimeSlots();

    final result = await bookAppointmentRepo.getDoctorAvailableTimeSlots(
        doctorId: id, day: day);

    result.fold(
      (error) => _emitErrorDoctorDayTimeSlots(error.message),
      (doctorDayTimeSlots) =>
          _emitSuccessDoctorDayTimeSlots(doctorDayTimeSlots),
    );
  }

  Future<void> fetchDoctorAvailableDays(int doctorID) async {
    _emitLoadingDoctorAvailableDays();

    final result =
        await bookAppointmentRepo.getDoctorAvailableDays(doctorId: doctorID);

    result.fold(
      (error) => _emitErrorDoctorAvailableDays(error.message),
      (doctorAvailableDays) =>
          _emitSuccessDoctorAvailableDays(doctorAvailableDays),
    );
  }

  Future<void> addInitiateBooking() async {
    if (isClosed) return;

    _emitLoadingAddInitiateBooking();

    final result = await bookAppointmentRepo.addInitiateBooking(
      InitiateBookingCommandDto(
        patientId: 0,
        timeSoltId: state.selectedTimeSlot!.id,
        appointmentType: 0,
      ),
    );

    result.fold(
      (error) => _emitErrorAddInitiateBooking(
        error.message,
      ),
      (initiateBooking) => _emitSuccessAddInitiateBooking(initiateBooking),
    );
  }

  // --- Helper Methods ---

  void _emitLoadingDoctorDayTimeSlots() {
    emit(state.copyWith(
      doctorDayTimeSlotsState:
          state.doctorDayTimeSlotsState.copyWith(isLoading: true),
    ));
  }

  void _emitSuccessDoctorDayTimeSlots(List<DoctorTimeSlot> slots) {
    emit(state.copyWith(
      doctorDayTimeSlotsState:
          state.doctorDayTimeSlotsState.copyWith(isLoading: false, data: slots),
      selectedTimeSlot: slots.isNotEmpty ? slots.first : null,
    ));
  }

  void _emitErrorDoctorDayTimeSlots(String error) {
    emit(state.copyWith(
      doctorDayTimeSlotsState: state.doctorDayTimeSlotsState
          .copyWith(isLoading: false, errorMessage: error),
    ));
  }

  void _emitLoadingDoctorAvailableDays() {
    emit(state.copyWith(
      doctorAvailableDaysState:
          state.doctorAvailableDaysState.copyWith(isLoading: true),
    ));
  }

  void _emitSuccessDoctorAvailableDays(List<AvailableWorkDay> days) {
    emit(state.copyWith(
      doctorAvailableDaysState:
          state.doctorAvailableDaysState.copyWith(isLoading: false, data: days),
      seletedDay: days.isNotEmpty ? days.first : null,
    ));
  }

  void _emitErrorDoctorAvailableDays(String error) {
    emit(state.copyWith(
      doctorAvailableDaysState: state.doctorAvailableDaysState
          .copyWith(isLoading: false, errorMessage: error),
    ));
  }

  void _emitLoadingAddInitiateBooking() {
    emit(state.copyWith(
      addInitiateBookingState:
          state.addInitiateBookingState.copyWith(isLoading: true),
    ));
  }

  void _emitSuccessAddInitiateBooking(dynamic initiateBooking) {
    emit(state.copyWith(
      addInitiateBookingState: state.addInitiateBookingState
          .copyWith(isLoading: false, data: initiateBooking),
      currentSection: EnAppointmentSection.payment,
    ));
  }

  void _emitErrorAddInitiateBooking(String error) {
    emit(state.copyWith(
      addInitiateBookingState: state.addInitiateBookingState
          .copyWith(isLoading: false, errorMessage: error),
    ));
  }
}
