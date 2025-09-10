// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_booking_command_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitiateBookingCommandDtoImpl _$$InitiateBookingCommandDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InitiateBookingCommandDtoImpl(
      patientId: (json['patientId'] as num).toInt(),
      timeSoltId: (json['timeSoltId'] as num).toInt(),
      appointmentType: (json['appointmentType'] as num).toInt(),
    );

Map<String, dynamic> _$$InitiateBookingCommandDtoImplToJson(
        _$InitiateBookingCommandDtoImpl instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'timeSoltId': instance.timeSoltId,
      'appointmentType': instance.appointmentType,
    };
