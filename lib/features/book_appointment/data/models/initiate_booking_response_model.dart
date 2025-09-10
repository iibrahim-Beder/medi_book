import 'package:json_annotation/json_annotation.dart';

part 'initiate_booking_response_model.g.dart';

@JsonSerializable()
class InitiateBookingResponseModel {
  final int bookingId;
  final int holdExpiresInSeconds;
  final DateTime holdExpiresAtUtc;

  InitiateBookingResponseModel({
    required this.bookingId,
    required this.holdExpiresInSeconds,
    required this.holdExpiresAtUtc,
  });

  factory InitiateBookingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InitiateBookingResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InitiateBookingResponseModelToJson(this);
      
}
