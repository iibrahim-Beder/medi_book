import 'package:medi_book/features/find_nearby_doctors/domain/entities/location_with_doctors.dart';

class CellLocationsWithDoctors {
  final String cellId;
  final List<LocationWithDoctors> locations;

  const CellLocationsWithDoctors({
    required this.cellId,
    required this.locations,
  });
}
