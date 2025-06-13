import 'package:medi_book/features/home/data/models/doctor_location_model.dart';
import 'package:medi_book/features/home/domain/entities/doctor_location.dart';

extension DoctorLocationMapper on DoctorLocationModel {
  DoctorLocation toEntity() {
    return DoctorLocation(
      name: name,
      address: address,
      state: state,
      country: country,
      city: city,
      googleMapsUrl: googleMapsUrl,
      postcode: postcode,
      road: road,
    );
  }
}
