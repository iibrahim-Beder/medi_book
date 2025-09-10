import 'package:json_annotation/json_annotation.dart';
import 'package:medi_book/features/home/data/models/doctor_model.dart';
part 'doctors_cluster_preview_model.g.dart';

@JsonSerializable()
class DoctorsClusterPreviewModel {
  final String cellId; // ID of the cluster cell
  final int totalDoctors; // Total doctors count in the cluster
  final List<DoctorModel> sampleDoctors; // Sample list of doctors (e.g. 3-5 items)

  const DoctorsClusterPreviewModel({
    required this.cellId,
    required this.totalDoctors,
    required this.sampleDoctors,
  });

  factory DoctorsClusterPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorsClusterPreviewModelFromJson(json);

}
