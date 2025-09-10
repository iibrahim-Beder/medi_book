import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/home/data/models/doctor_model.dart';
part 'get_doctors_model.g.dart';

@JsonSerializable()
class GetPaginatedDoctorsModel {
  final List<DoctorModel> data;
  final int currentPage;
  final int totalPages;
  final int totalCount;
  final int pageSize;
  final bool hasPreviousPage;
  final bool hasNextPage;
  final bool succeeded;

  GetPaginatedDoctorsModel({
    required this.data,
    required this.currentPage,
    required this.totalPages,
    required this.totalCount,
    required this.pageSize,
    required this.hasPreviousPage,
    required this.hasNextPage,
    required this.succeeded,
  });

  factory GetPaginatedDoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$GetPaginatedDoctorsModelFromJson(json);
}
