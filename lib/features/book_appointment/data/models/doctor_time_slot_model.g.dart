// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_time_slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorTimeSlotModel _$DoctorTimeSlotModelFromJson(Map<String, dynamic> json) =>
    DoctorTimeSlotModel(
      timeSlotId: (json['timeSlotID'] as num).toInt(),
      startTime:
          DoctorTimeSlotModel._durationFromString(json['startTime'] as String),
      endTime:
          DoctorTimeSlotModel._durationFromString(json['endTime'] as String),
    );

Map<String, dynamic> _$DoctorTimeSlotModelToJson(
        DoctorTimeSlotModel instance) =>
    <String, dynamic>{
      'timeSlotID': instance.timeSlotId,
      'startTime': DoctorTimeSlotModel._durationToString(instance.startTime),
      'endTime': DoctorTimeSlotModel._durationToString(instance.endTime),
    };
