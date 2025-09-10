// compute_helpers.dart
import 'package:flutter/foundation.dart';
import 'package:h3_flutter/h3_flutter.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/helpers/s2_cell_calculator.dart';

/// Runs in isolate: Filters cached and fresh cell keys
// Set<String> _filterCachedFreshCells(Map<String, dynamic> data) {
//   final List<String> keys = List<String>.from(data['keys']);
//   final int ttlMs = data['ttl'];
//   final Duration cacheTTL = Duration(milliseconds: ttlMs);

//   return keys.where((key) => NearbyDoctorCellCache.isFresh(key, cacheTTL)).toSet();
// }

// /// Runs in isolate: Filters fresh cell keys (those NOT cached yet)
// Set<String> _filterFreshCells(Map<String, dynamic> data) {
//   final List<String> keys = List<String>.from(data['keys']);

//   return keys.where((key) => !NearbyDoctorCellCache.exists(key)).toSet();
// }

// /// Get cached & fresh cell keys (run filtering in isolate)
// Future<Set<String>> computeCachedFreshCells(
//     Set<String> cellKeys, Duration cacheTTL) async {
//   if (cellKeys.isEmpty) return {};
//   return compute(_filterCachedFreshCells, {
//     'keys': cellKeys.toList(),
//     'ttl': cacheTTL.inMilliseconds,
//   });
// }

// /// Get fresh cell keys (those not cached yet) in isolate
// Future<Set<String>> computeFreshCells(Set<String> cellKeys) async {
//   if (cellKeys.isEmpty) return {};
//   return compute(_filterFreshCells, {
//     'keys': cellKeys.toList(),
//   });
// }

Set<String> _generateCellKeysIsolate(Map<String, dynamic> data) {
  final double latMin = data['latMin'];
  final double latMax = data['latMax'];
  final double lngMin = data['lngMin'];
  final double lngMax = data['lngMax'];
  final CellConfig config = data['config'];

  final Set<String> keys = {};
  final h3 = const H3Factory().load();
  final int resolution = getH3ResolutionFromZoom(config.zoomLevel);

  final double step = getStepFromResolution(resolution);

  for (double lat = latMin; lat <= latMax; lat += step) {
    for (double lng = lngMin; lng <= lngMax; lng += step) {
      final geoCoord = GeoCoord(lat: lat, lon: lng);
      final h3Index = h3.geoToCell(geoCoord, resolution);
      final key =
          'cell_zoom${config.zoomLevel}_${config.label}_${h3Index.toString()}';

      keys.add(key);
    }
  }

  return keys;
}

double getStepFromResolution(int resolution) {
  return 1 / (1 << resolution);
}


// Public async method to call from main thread
Future<Set<String>> computeGenerateCellKeys({
  required double latMin,
  required double latMax,
  required double lngMin,
  required double lngMax,
  required CellConfig config,
}) async {
  return compute(_generateCellKeysIsolate, {
    'latMin': latMin,
    'latMax': latMax,
    'lngMin': lngMin,
    'lngMax': lngMax,
    'config': config,
  });
}
