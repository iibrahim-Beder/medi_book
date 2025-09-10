// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorReviewModel _$DoctorReviewModelFromJson(Map<String, dynamic> json) =>
    DoctorReviewModel(
      reviewID: (json['reviewID'] as num).toInt(),
      patientName: json['patientName'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
      dateOfReview: DateTime.parse(json['dateOfReview'] as String),
      patientImagePath: json['patientImagePath'] as String?,
    );

Map<String, dynamic> _$DoctorReviewModelToJson(DoctorReviewModel instance) =>
    <String, dynamic>{
      'reviewID': instance.reviewID,
      'patientName': instance.patientName,
      'rating': instance.rating,
      'comment': instance.comment,
      'dateOfReview': instance.dateOfReview.toIso8601String(),
      'patientImagePath': instance.patientImagePath,
    };
