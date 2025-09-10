// Mapper between DTO and Entity
import 'package:medi_book/features/find_nearby_doctors/data/models/request/doctor_map_filters_model.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/doctor_map_filters.dart';

extension DoctorMapFiltersMapper on DoctorMapFiltersModel {
  DoctorMapFiltersEntity toEntity() {
    return DoctorMapFiltersEntity(
      currentlyWorking: currentlyWorking,
      priceMin: priceMin,
      priceMax: priceMax,
      ratingMin: ratingMin,
    );
  }
  static DoctorMapFiltersModel fromEntity(DoctorMapFiltersEntity entity) {
    return DoctorMapFiltersModel(
      currentlyWorking: entity.currentlyWorking,
      priceMin: entity.priceMin,
      priceMax: entity.priceMax,
      ratingMin: entity.ratingMin,
    );
  }
}
