import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/features/book_appointment/data/mappers/available_work_day_mapper.dart';
import 'package:medi_book/features/book_appointment/data/mappers/doctor_time_slot_mapper.dart';
import 'package:medi_book/features/book_appointment/data/mappers/initiate_booking_response_mapper.dart';
import 'package:medi_book/features/book_appointment/data/models/doctor_time_slot.dart';
import 'package:medi_book/features/book_appointment/domain/entities/available_work_day.dart';
import 'package:medi_book/features/book_appointment/domain/entities/initiate_booking_response.dart';
import 'package:medi_book/features/book_appointment/domain/repo/book_appointment_repo.dart';
import 'package:medi_book/features/book_appointment/networking/book_appointment_api_service.dart';
import 'package:medi_book/features/home/dtos/initiate_booking_command_dto.dart';

class BookAppointmentRepoImpl extends BookAppointmentRepo {
   final BookAppointmentApiService _apiService;

   BookAppointmentRepoImpl(this._apiService);

  @override
  Future<Either<Failures, List<DoctorTimeSlot>>> getDoctorAvailableTimeSlots(
      {required int doctorId, required DateTime day}) async {
    try {
      var response = await _apiService.getDayDoctorTimeSlots(doctorId, day);

      return right(response.data.toEntityList());
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<AvailableWorkDay>>> getDoctorAvailableDays(
      {required int doctorId}) async {
    try {
      var response = await _apiService.getDoctorAvailableDays(doctorId);
      return right(response.data.toEntityList());
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, InitiateBookingResponse>> addInitiateBooking(
      InitiateBookingCommandDto initiateBookingCommandDto) async {
    try {
      var response =
          await _apiService.addInitiateBooking(initiateBookingCommandDto.toJson());
      if (!response.succeeded) {
        return left(ServerFailure(response.message!));
      }
      return right(response.data.toEntity());
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }
}
