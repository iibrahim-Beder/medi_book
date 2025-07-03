import 'package:dio/dio.dart';
import 'package:medi_book/core/networking/base_response_model.dart';
import 'package:medi_book/features/book_appointment/data/models/available_work_day_model.dart';
import 'package:medi_book/features/book_appointment/data/models/doctor_time_slot_model.dart';
import 'package:medi_book/features/book_appointment/data/models/initiate_booking_response_model.dart';
import 'package:medi_book/features/book_appointment/networking/book_appointment_endpoints.dart';
import 'package:medi_book/features/home/dtos/initiate_booking_command_dto.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'book_appointment_api_service.g.dart';

@RestApi(baseUrl: BookAppointmentEndpoints.base)
abstract class BookAppointmentApiService {
  factory BookAppointmentApiService(Dio dio, {String baseUrl}) =
      _BookAppointmentApiService;
  @GET(BookAppointmentEndpoints.getDayAvailableTimeSlots)
  Future<BaseResponseModel<List<DoctorTimeSlotModel>>> getDayDoctorTimeSlots(
    @Path('id') int id,
    @Query('day') DateTime dayNumber,
  );

  @GET(BookAppointmentEndpoints.getDoctorAvailableDays)
  Future<BaseResponseModel<List<AvailableWorkDayModel>>> getDoctorAvailableDays(
      @Path('id') int id);

@POST(BookAppointmentEndpoints.addInitiateBooking)
Future<BaseResponseModel<InitiateBookingResponseModel>> addInitiateBooking(
  @Body() Map<String, dynamic> body,
);
}
