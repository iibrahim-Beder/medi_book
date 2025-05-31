
import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor_model.g.dart';
@JsonSerializable()
class DoctorModel {
  final int doctorID;
  final String firstName;
  final String lastName;
  final String spicialityName;
  final String locationName;
  final double ratingAverage;
  final int numberOfReviews;
  final String imagePath;

  DoctorModel({
    required this.doctorID,
    required this.firstName,
    required this.lastName,
    required this.spicialityName,
    required this.locationName,
    required this.ratingAverage,
    required this.numberOfReviews,
    required this.imagePath,
  });

    factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}
