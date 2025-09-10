import 'package:medi_book/features/find_nearby_doctors/data/models/request/doctor_map_filters_model.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_state.dart';

class FindNearbyDoctors {
  final List<String> cells;
  final DoctorMapFiltersModel filters;
  final SortBy sortBy;

  const FindNearbyDoctors({
    required this.cells,
    required this.filters,
    required this.sortBy,
  });
}
