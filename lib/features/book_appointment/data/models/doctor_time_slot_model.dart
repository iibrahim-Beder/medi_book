import 'package:json_annotation/json_annotation.dart';

part 'doctor_time_slot_model.g.dart';

@JsonSerializable()
class DoctorTimeSlotModel {
  @JsonKey(name: 'timeSlotID')
  final int timeSlotId;

  @JsonKey(fromJson: _durationFromString, toJson: _durationToString)
  final Duration startTime;

  @JsonKey(fromJson: _durationFromString, toJson: _durationToString)
  final Duration endTime;

  const DoctorTimeSlotModel({
    required this.timeSlotId,
    required this.startTime,
    required this.endTime,
  });

  factory DoctorTimeSlotModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorTimeSlotModelFromJson(json);

  // Helpers for Duration parsing from string like "09:00:00"
  static Duration _durationFromString(String value) {
    final parts = value.split(":").map(int.parse).toList();
    return Duration(
      hours: parts[0],
      minutes: parts[1],
      seconds: parts.length > 2 ? parts[2] : 0,
    );
  }

  static String _durationToString(Duration duration) {
    final twoDigits = (int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$hours:$minutes:$seconds";
  }
}
