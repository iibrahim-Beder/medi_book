// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => DoctorModel(
      doctorID: (json['doctorID'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      spicialityName: json['spicialityName'] as String,
      locationName: json['locationName'] as String,
      ratingAverage: (json['ratingAverage'] as num).toDouble(),
      numberOfReviews: (json['numberOfReviews'] as num).toInt(),
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'doctorID': instance.doctorID,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'spicialityName': instance.spicialityName,
      'locationName': instance.locationName,
      'ratingAverage': instance.ratingAverage,
      'numberOfReviews': instance.numberOfReviews,
      'imagePath': instance.imagePath,
    };
