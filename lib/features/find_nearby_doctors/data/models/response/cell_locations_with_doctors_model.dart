import 'package:json_annotation/json_annotation.dart';
import 'package:medi_book/features/find_nearby_doctors/data/models/response/location_with_doctors_model.dart';
part 'cell_locations_with_doctors_model.g.dart';


@JsonSerializable()
class CellLocationsWithDoctorsModel {
  final String cellId;
  final List<LocationWithDoctorsModel> locations;

  CellLocationsWithDoctorsModel({
    required this.cellId,
    required this.locations,
  });

  factory CellLocationsWithDoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$CellLocationsWithDoctorsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CellLocationsWithDoctorsModelToJson(this);
}

