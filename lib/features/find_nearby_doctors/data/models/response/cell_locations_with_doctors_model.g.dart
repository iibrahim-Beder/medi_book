// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cell_locations_with_doctors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CellLocationsWithDoctorsModel _$CellLocationsWithDoctorsModelFromJson(
        Map<String, dynamic> json) =>
    CellLocationsWithDoctorsModel(
      cellId: json['cellId'] as String,
      locations: (json['locations'] as List<dynamic>)
          .map((e) => LocationDoctorsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CellLocationsWithDoctorsModelToJson(
        CellLocationsWithDoctorsModel instance) =>
    <String, dynamic>{
      'cellId': instance.cellId,
      'locations': instance.locations,
    };

LocationDoctorsModel _$LocationDoctorsModelFromJson(
        Map<String, dynamic> json) =>
    LocationDoctorsModel(
      locationId: json['locationId'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      locationDescription: json['locationDescription'] as String?,
      doctors: (json['doctors'] as List<dynamic>)
          .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationDoctorsModelToJson(
        LocationDoctorsModel instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'locationDescription': instance.locationDescription,
      'doctors': instance.doctors,
    };
