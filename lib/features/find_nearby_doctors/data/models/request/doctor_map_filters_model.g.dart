// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_map_filters_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorMapFiltersModel _$DoctorMapFiltersModelFromJson(
        Map<String, dynamic> json) =>
    DoctorMapFiltersModel(
      currentlyWorking: json['currentlyWorking'] as bool?,
      priceMin: (json['priceMin'] as num?)?.toInt(),
      priceMax: (json['priceMax'] as num?)?.toInt(),
      ratingMin: (json['ratingMin'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DoctorMapFiltersModelToJson(
        DoctorMapFiltersModel instance) =>
    <String, dynamic>{
      'currentlyWorking': instance.currentlyWorking,
      'priceMin': instance.priceMin,
      'priceMax': instance.priceMax,
      'ratingMin': instance.ratingMin,
    };
