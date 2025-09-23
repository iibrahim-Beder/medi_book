import 'package:json_annotation/json_annotation.dart';
import 'package:medi_book/features/home/data/models/doctor_model.dart';
part 'location_with_doctors_model.g.dart';
@JsonSerializable()
class LocationWithDoctorsModel {
  final String locationId;
  final double latitude;
  final double longitude;
  final String? locationDescription;
  final List<DoctorModel> doctors;

  LocationWithDoctorsModel({
    required this.locationId,
    required this.latitude,
    required this.longitude,
    this.locationDescription,
    required this.doctors,
  });

  factory LocationWithDoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$LocationWithDoctorsModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationWithDoctorsModelToJson(this);
}
