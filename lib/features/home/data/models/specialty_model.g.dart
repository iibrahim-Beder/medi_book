// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialtyModel _$SpecialtyModelFromJson(Map<String, dynamic> json) =>
    SpecialtyModel(
      id: (json['specialtyID'] as num).toInt(),
      name: json['specialtyName'] as String,
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$SpecialtyModelToJson(SpecialtyModel instance) =>
    <String, dynamic>{
      'specialtyID': instance.id,
      'specialtyName': instance.name,
      'imagePath': instance.imagePath,
    };
