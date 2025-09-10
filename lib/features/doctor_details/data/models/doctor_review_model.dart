import 'package:json_annotation/json_annotation.dart';

part 'doctor_review_model.g.dart';

@JsonSerializable()
class DoctorReviewModel {
  final int reviewID;
  final String patientName;
  final int rating;
  final String comment;
  final DateTime dateOfReview;
  final String? patientImagePath;

  DoctorReviewModel({
    required this.reviewID,
    required this.patientName,
    required this.rating,
    required this.comment,
    required this.dateOfReview,
    this.patientImagePath,
  });

  factory DoctorReviewModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorReviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorReviewModelToJson(this);
}
