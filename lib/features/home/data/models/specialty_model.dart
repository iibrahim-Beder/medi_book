import 'package:json_annotation/json_annotation.dart';
part 'specialty_model.g.dart';

@JsonSerializable()
class SpecialtyModel {
  @JsonKey(name: 'specialtyID')
  final int id;

  @JsonKey(name: 'specialtyName')
  final String name;

  @JsonKey(name: 'imagePath')
  final String imagePath;

  SpecialtyModel({
    required this.id,
    required this.name,
    required this.imagePath,
  });

  factory SpecialtyModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialtyModelFromJson(json);

}
