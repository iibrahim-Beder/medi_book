// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_cluster_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsClusterPreviewModel _$DoctorsClusterPreviewModelFromJson(
        Map<String, dynamic> json) =>
    DoctorsClusterPreviewModel(
      cellId: json['cellId'] as String,
      totalDoctors: (json['totalDoctors'] as num).toInt(),
      sampleDoctors: (json['sampleDoctors'] as List<dynamic>)
          .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DoctorsClusterPreviewModelToJson(
        DoctorsClusterPreviewModel instance) =>
    <String, dynamic>{
      'cellId': instance.cellId,
      'totalDoctors': instance.totalDoctors,
      'sampleDoctors': instance.sampleDoctors,
    };
