// Mapper between DTO and Entity
import 'package:medi_book/features/find_nearby_doctors/data/models/request/doctor_map_filters_model.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/request/doctor_map_filters.dart';

extension DoctorMapFiltersMapper on DoctorMapFiltersModel {
  DoctorMapFilters toEntity() {
    return DoctorMapFilters(
      currentlyWorking: currentlyWorking,
      priceMin: priceMin,
      priceMax: priceMax,
      ratingMin: ratingMin,
    );
  }

  static DoctorMapFiltersModel fromEntity(DoctorMapFilters entity) {
    return DoctorMapFiltersModel(
      currentlyWorking: entity.currentlyWorking,
      priceMin: entity.priceMin,
      priceMax: entity.priceMax,
      ratingMin: entity.ratingMin,
    );
  }
}
