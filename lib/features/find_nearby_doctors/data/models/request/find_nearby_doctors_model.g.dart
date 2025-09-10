// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_nearby_doctors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindNearbyDoctorsModel _$FindNearbyDoctorsModelFromJson(
        Map<String, dynamic> json) =>
    FindNearbyDoctorsModel(
      bounds: FindNearbyDoctorsModel.latLngBoundsFromJson(
          json['bounds'] as Map<String, dynamic>),
      zoomLevel: (json['zoomLevel'] as num).toDouble(),
      filters: DoctorMapFiltersModel.fromJson(
          json['filters'] as Map<String, dynamic>),
      sortBy: json['sortBy'] as String,
    );

Map<String, dynamic> _$FindNearbyDoctorsModelToJson(
        FindNearbyDoctorsModel instance) =>
    <String, dynamic>{
      'bounds': FindNearbyDoctorsModel.latLngBoundsToJson(instance.bounds),
      'zoomLevel': instance.zoomLevel,
      'filters': instance.filters,
      'sortBy': instance.sortBy,
    };
