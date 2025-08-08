import 'package:json_annotation/json_annotation.dart';
part 'doctor_profile_model.g.dart';

@JsonSerializable()
class DoctorProfileModel {
  final int yearsOfExperience;
  final String licenceNumber;
  final String bio;
  final String? languagesSpoken;
  final String workingTime;
  final int practiceStartYear;

  DoctorProfileModel(
     {
    required this.practiceStartYear,
    required this.yearsOfExperience,
    required this.licenceNumber,
    required this.bio,
    this.languagesSpoken,
    required this.workingTime,
  });

  factory DoctorProfileModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorProfileModelFromJson(json['data']);
}
