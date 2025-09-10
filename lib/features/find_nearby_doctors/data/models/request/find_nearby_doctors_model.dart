import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:medi_book/features/find_nearby_doctors/data/models/request/doctor_map_filters_model.dart';
part 'find_nearby_doctors_model.g.dart';

@JsonSerializable()
class FindNearbyDoctorsModel {
  @JsonKey(fromJson: latLngBoundsFromJson, toJson: latLngBoundsToJson)
  final LatLngBounds bounds;
  
  final double zoomLevel;
  final DoctorMapFiltersModel filters;
  final String sortBy;

  const FindNearbyDoctorsModel({
    required this.bounds,
    required this.zoomLevel,
    required this.filters,
    required this.sortBy,
  });

  factory FindNearbyDoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$FindNearbyDoctorsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FindNearbyDoctorsModelToJson(this);

  static LatLngBounds latLngBoundsFromJson(Map<String, dynamic> json) {
    return LatLngBounds(
      southwest: LatLng(json['southwest']['latitude'], json['southwest']['longitude']),
      northeast: LatLng(json['northeast']['latitude'], json['northeast']['longitude']),
    );
  }

  static Map<String, dynamic> latLngBoundsToJson(LatLngBounds bounds) {
    return {
      'southwest': {
        'latitude': bounds.southwest.latitude,
        'longitude': bounds.southwest.longitude,
      },
      'northeast': {
        'latitude': bounds.northeast.latitude,
        'longitude': bounds.northeast.longitude,
      },
    };
  }
}

