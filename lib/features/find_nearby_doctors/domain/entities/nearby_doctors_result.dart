
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/home/domain/entities/doctor.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/location_with_doctors.dart';
part 'nearby_doctors_result.freezed.dart';

@freezed
class NearbyDoctorsResult with _$NearbyDoctorsResult {
  const factory NearbyDoctorsResult({
    required List<LocationWithDoctors> groupedByLocation,
    List<Doctor>? generalDoctorsList,
    List<Doctor>? selectedLocationDoctors,
  }) = _NearbyDoctorsResult;

  factory NearbyDoctorsResult.empty() => const NearbyDoctorsResult(
    groupedByLocation: [],
    generalDoctorsList: [],
    selectedLocationDoctors: null,
  );
}



