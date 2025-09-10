import 'package:json_annotation/json_annotation.dart';

part 'available_work_day_model.g.dart';

@JsonSerializable()
class AvailableWorkDayModel {
  final int index;
  final DateTime day;
  final String dayOfWeek;
  final bool isAvailable;
  final int availableSlotsCount;

  AvailableWorkDayModel({
    required this.index,
    required this.day,
    required this.dayOfWeek,
    required this.isAvailable,
    required this.availableSlotsCount,
  });

  factory AvailableWorkDayModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableWorkDayModelFromJson(json);
}
