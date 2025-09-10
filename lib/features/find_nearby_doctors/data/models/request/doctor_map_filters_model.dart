import 'package:json_annotation/json_annotation.dart';
part 'doctor_map_filters_model.g.dart';
@JsonSerializable()
class DoctorMapFiltersModel {
  final bool? currentlyWorking;
  final int? priceMin;
  final int? priceMax;
  final double? ratingMin;

  const DoctorMapFiltersModel({
    this.currentlyWorking,
    this.priceMin,
    this.priceMax,
    this.ratingMin,
  });

  factory DoctorMapFiltersModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorMapFiltersModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorMapFiltersModelToJson(this);
}
