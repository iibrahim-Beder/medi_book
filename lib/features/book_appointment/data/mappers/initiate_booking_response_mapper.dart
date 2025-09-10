import 'package:medi_book/features/book_appointment/data/models/initiate_booking_response_model.dart';
import 'package:medi_book/features/book_appointment/domain/entities/initiate_booking_response.dart';

extension InitiateBookingResponseMapper on InitiateBookingResponseModel {
  InitiateBookingResponse toEntity() {
    return InitiateBookingResponse(
      bookingId: bookingId,
      holdExpiresInSeconds: holdExpiresInSeconds,
      holdExpiresAtUtc: holdExpiresAtUtc,
    );
  }
}
