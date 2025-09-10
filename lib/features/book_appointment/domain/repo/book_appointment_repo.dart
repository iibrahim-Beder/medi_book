
import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/features/book_appointment/data/models/doctor_time_slot.dart';
import 'package:medi_book/features/book_appointment/domain/entities/available_work_day.dart';
import 'package:medi_book/features/book_appointment/domain/entities/initiate_booking_response.dart';
import 'package:medi_book/features/home/dtos/initiate_booking_command_dto.dart';

abstract class BookAppointmentRepo {
  
  Future<Either<Failures, List<DoctorTimeSlot>>> getDoctorAvailableTimeSlots ({required int doctorId,required DateTime day});
  Future<Either<Failures, List<AvailableWorkDay>>> getDoctorAvailableDays ({required int doctorId});
  Future<Either<Failures, InitiateBookingResponse>> addInitiateBooking(InitiateBookingCommandDto initiateBookingCommandDto);
}