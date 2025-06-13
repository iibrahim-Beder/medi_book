// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorProfileModel _$DoctorProfileModelFromJson(Map<String, dynamic> json) =>
    DoctorProfileModel(
      practiceStartYear: (json['practiceStartYear'] as num).toInt(),
      yearsOfExperience: (json['yearsOfExperience'] as num).toInt(),
      licenceNumber: json['licenceNumber'] as String,
      bio: json['bio'] as String,
      languagesSpoken: json['languagesSpoken'] as String?,
      workingTime: json['workingTime'] as String,
    );

Map<String, dynamic> _$DoctorProfileModelToJson(DoctorProfileModel instance) =>
    <String, dynamic>{
      'yearsOfExperience': instance.yearsOfExperience,
      'licenceNumber': instance.licenceNumber,
      'bio': instance.bio,
      'languagesSpoken': instance.languagesSpoken,
      'workingTime': instance.workingTime,
      'practiceStartYear': instance.practiceStartYear,
    };
