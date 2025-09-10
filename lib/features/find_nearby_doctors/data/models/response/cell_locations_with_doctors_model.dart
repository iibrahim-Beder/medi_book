import 'package:json_annotation/json_annotation.dart';
import 'package:medi_book/features/home/data/models/doctor_model.dart';
part 'cell_locations_with_doctors_model.g.dart';


@JsonSerializable()
class CellLocationsWithDoctorsModel {
  final String cellId;
  final List<LocationDoctorsModel> locations;

  CellLocationsWithDoctorsModel({
    required this.cellId,
    required this.locations,
  });

  factory CellLocationsWithDoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$CellLocationsWithDoctorsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CellLocationsWithDoctorsModelToJson(this);
}

@JsonSerializable()
class LocationDoctorsModel {
  final String locationId;
  final double latitude;
  final double longitude;
  final String? locationDescription;
  final List<DoctorModel> doctors;

  LocationDoctorsModel({
    required this.locationId,
    required this.latitude,
    required this.longitude,
    this.locationDescription,
    required this.doctors,
  });

  factory LocationDoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDoctorsModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationDoctorsModelToJson(this);
}
