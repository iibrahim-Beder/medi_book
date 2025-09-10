import 'package:medi_book/features/find_nearby_doctors/data/models/request/doctor_map_filters_model.dart';

String buildCacheKey({
  required String cellId,
  required DoctorMapFiltersModel filters,
  required bool isSummary,
}) {
  // 1. Determine the prefix based on the data type (summary or detailed)
  final prefix = isSummary ? 'summary' : 'detailed';

  // 2. Convert filters to a JSON map
  // 3. Exclude any filter whose value is null (unused)
  // 4. Convert each filter to a string in the form key=value
  // 5. Collect the results into a list
  final filterParts = filters
      .toJson()
      .entries
      .where((entry) => entry.value != null)
      .map((entry) => '${entry.key}=${entry.value}')
      .toList()
    // 6. Sort the list alphabetically to ensure consistent cache keys
    ..sort();

  // 7. Join all filters into a single string separated by &
  final filterKey = filterParts.join('&');

  // 8. Build the final cache key by combining the prefix, cellId, and filters (if any)
  return '${prefix}_$cellId${filterKey.isNotEmpty ? '_$filterKey' : ''}';
}
