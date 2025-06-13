import 'package:medi_book/features/home/data/mappers/doctor_location_mapper.dart';
import 'package:medi_book/features/home/data/models/doctor_location_model.dart';
import 'package:medi_book/features/home/domain/entities/doctor_location.dart';

extension DoctorLocationListMapper on List<DoctorLocationModel> {
  List<DoctorLocation> toEntityList() {
    return map((model) => model.toEntity()).toList();
  }
}