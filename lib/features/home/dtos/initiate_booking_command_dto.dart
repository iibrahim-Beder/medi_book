import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiate_booking_command_dto.freezed.dart';
part 'initiate_booking_command_dto.g.dart';

@freezed
class InitiateBookingCommandDto with _$InitiateBookingCommandDto {
  const factory InitiateBookingCommandDto({
    required int patientId,
    required int timeSoltId,
    required int appointmentType,
  }) = _InitiateBookingCommandDto;

  const InitiateBookingCommandDto._();

  factory InitiateBookingCommandDto.fromJson(Map<String, dynamic> json) =>
      _$InitiateBookingCommandDtoFromJson(json);
}
