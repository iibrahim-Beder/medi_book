// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorLocationModel _$DoctorLocationModelFromJson(Map<String, dynamic> json) =>
    DoctorLocationModel(
      name: json['name'] as String?,
      address: json['address'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      googleMapsUrl: json['googleMapsUrl'] as String?,
      postcode: json['postcode'] as String?,
      road: json['road'] as String?,
    );

Map<String, dynamic> _$DoctorLocationModelToJson(
        DoctorLocationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'state': instance.state,
      'country': instance.country,
      'city': instance.city,
      'googleMapsUrl': instance.googleMapsUrl,
      'postcode': instance.postcode,
      'road': instance.road,
    };
