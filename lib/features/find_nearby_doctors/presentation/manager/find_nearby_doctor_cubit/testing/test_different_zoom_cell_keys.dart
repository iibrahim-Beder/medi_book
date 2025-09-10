
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/helpers/s2_cell_calculator.dart';

void testDifferentZoomCellKeys() {
  final LatLng center = LatLng(30.0444, 31.2357);

  // Zoom 15 ≈ 2 كم
  final config2km = CellConfig(zoomLevel: 15, size: 2.0, label: '2km');
  final keys2km = S2CellCalculator.generateCellKeys(
    latMin: center.latitude - 0.01,
    latMax: center.latitude + 0.01,
    lngMin: center.longitude - 0.01,
    lngMax: center.longitude + 0.01,
    config: config2km,
  );

  // Zoom 14 ≈ 5 كم
  final config5km = CellConfig(zoomLevel: 14, size: 5.0, label: '5km');
  final keys5km = S2CellCalculator.generateCellKeys(
    latMin: center.latitude - 0.01,
    latMax: center.latitude + 0.01,
    lngMin: center.longitude - 0.01,
    lngMax: center.longitude + 0.01,
    config: config5km,
  );

  print('🔍 2km keys:');
  keys2km.forEach((k) => print(k));

  print('🔍 5km keys:');
  keys5km.forEach((k) => print(k));

  final intersect = keys2km.toSet().intersection(keys5km.toSet());

  if (intersect.isEmpty) {
    print('✅ Zoom levels generate distinct cell keys!');
  } else {
    print('❌ Some keys overlap between 2km and 5km zooms!');
    intersect.forEach((k) => print('Overlap: $k'));
  }
}

