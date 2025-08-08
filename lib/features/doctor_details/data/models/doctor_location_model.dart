import 'package:json_annotation/json_annotation.dart';

part 'doctor_location_model.g.dart';

@JsonSerializable()
class DoctorLocationModel {
  final String? name;
  final String? address;
  final String? state;
  final String? country;
  final String? city;
  final String? googleMapsUrl;
  final String? postcode;
  final String? road;

  DoctorLocationModel({
    this.name,
    this.address,
    this.state,
    this.country,
    this.city,
    this.googleMapsUrl,
    this.postcode,
    this.road,
  });

  factory DoctorLocationModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorLocationModelFromJson(json);  

}
