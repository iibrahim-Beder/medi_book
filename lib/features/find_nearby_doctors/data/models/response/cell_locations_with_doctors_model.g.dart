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
          .map((e) =>
              LocationWithDoctorsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CellLocationsWithDoctorsModelToJson(
        CellLocationsWithDoctorsModel instance) =>
    <String, dynamic>{
      'cellId': instance.cellId,
      'locations': instance.locations,
    };
