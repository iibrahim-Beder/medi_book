// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_booking_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitiateBookingResponseModel _$InitiateBookingResponseModelFromJson(
        Map<String, dynamic> json) =>
    InitiateBookingResponseModel(
      bookingId: (json['bookingId'] as num).toInt(),
      holdExpiresInSeconds: (json['holdExpiresInSeconds'] as num).toInt(),
      holdExpiresAtUtc: DateTime.parse(json['holdExpiresAtUtc'] as String),
    );

Map<String, dynamic> _$InitiateBookingResponseModelToJson(
        InitiateBookingResponseModel instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'holdExpiresInSeconds': instance.holdExpiresInSeconds,
      'holdExpiresAtUtc': instance.holdExpiresAtUtc.toIso8601String(),
    };
