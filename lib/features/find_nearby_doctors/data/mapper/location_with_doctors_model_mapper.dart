import 'package:medi_book/features/find_nearby_doctors/data/models/response/location_with_doctors_model.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/response/location_with_doctors.dart';
import 'package:medi_book/features/home/data/mappers/doctor_model_mapper.dart';

extension LocationWithDoctorsModelMapper on LocationWithDoctorsModel {
  LocationWithDoctors toEntity(String baseUrl) {
    return LocationWithDoctors(
      locationId: locationId,
      latitude: latitude,
      longitude: longitude,
      locationDescription: locationDescription,
      doctors: doctors.toEntity(baseUrl),
    );
  }
}

extension LocationWithDoctorsModelListMapper on List<LocationWithDoctorsModel> {
  List<LocationWithDoctors> toEntity(String baseUrl) {
    return map((model) => model.toEntity(baseUrl)).toList();
  }
}

