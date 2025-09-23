// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_with_doctors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationWithDoctorsModel _$LocationWithDoctorsModelFromJson(
        Map<String, dynamic> json) =>
    LocationWithDoctorsModel(
      locationId: json['locationId'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      locationDescription: json['locationDescription'] as String?,
      doctors: (json['doctors'] as List<dynamic>)
          .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationWithDoctorsModelToJson(
        LocationWithDoctorsModel instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'locationDescription': instance.locationDescription,
      'doctors': instance.doctors,
    };
