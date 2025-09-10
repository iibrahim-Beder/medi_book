// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_work_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableWorkDayModel _$AvailableWorkDayModelFromJson(
        Map<String, dynamic> json) =>
    AvailableWorkDayModel(
      index: (json['index'] as num).toInt(),
      day: DateTime.parse(json['day'] as String),
      dayOfWeek: json['dayOfWeek'] as String,
      isAvailable: json['isAvailable'] as bool,
      availableSlotsCount: (json['availableSlotsCount'] as num).toInt(),
    );

Map<String, dynamic> _$AvailableWorkDayModelToJson(
        AvailableWorkDayModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'day': instance.day.toIso8601String(),
      'dayOfWeek': instance.dayOfWeek,
      'isAvailable': instance.isAvailable,
      'availableSlotsCount': instance.availableSlotsCount,
    };
