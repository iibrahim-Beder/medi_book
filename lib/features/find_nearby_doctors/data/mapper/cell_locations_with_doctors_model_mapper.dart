import 'package:medi_book/features/find_nearby_doctors/data/mapper/location_with_doctors_model_mapper.dart';
import 'package:medi_book/features/find_nearby_doctors/data/models/response/cell_locations_with_doctors_model.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/response/cell_locations_with_doctors.dart';

extension CellLocationsWithDoctorsModelMapper on CellLocationsWithDoctorsModel {
  CellLocationsWithDoctors toEntity(String baseUrl) {
    return CellLocationsWithDoctors(
      cellId: cellId,
      locations: locations.toEntity(baseUrl),
    );
  }
}

extension CellLocationsWithDoctorsModelListMapper on List<CellLocationsWithDoctorsModel> {
  List<CellLocationsWithDoctors> toEntityList(String baseUrl) {
    return map((model) => model.toEntity(baseUrl)).toList();
  }
}

