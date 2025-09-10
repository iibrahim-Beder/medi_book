import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/helpers/s2_cell_calculator.dart';

void main() {
  test('S2CellCalculator generates consistent cell keys for the same input', () {
    final double latMin = 30.0;
    final double latMax = 30.1;
    final double lngMin = 31.0;
    final double lngMax = 31.1;
    final double zoomLevel = 15.0;

    final config = S2CellCalculator.getCellSizeByZoomAndBBox(
      zoomLevel,
      latMax - latMin,
      lngMax - lngMin,
    );

    final keys1 = S2CellCalculator.generateCellKeys(
      latMin: latMin,
      latMax: latMax,
      lngMin: lngMin,
      lngMax: lngMax,
      config: config,
    );

    final keys2 = S2CellCalculator.generateCellKeys(
      latMin: latMin,
      latMax: latMax,
      lngMin: lngMin,
      lngMax: lngMax,
      config: config,
    );

    expect(keys1, equals(keys2));
  });

  test('S2 cell keys for 2km and 5km do not overlap', () {
    final LatLng center = LatLng(30.0444, 31.2357);

    final config2km = CellConfig(zoomLevel: 15, size: 2.0, label: '2km');
    final config5km = CellConfig(zoomLevel: 14, size: 5.0, label: '5km');

    final keys2km = S2CellCalculator.generateCellKeys(
      latMin: center.latitude - 0.01,
      latMax: center.latitude + 0.01,
      lngMin: center.longitude - 0.01,
      lngMax: center.longitude + 0.01,
      config: config2km,
    );

    final keys5km = S2CellCalculator.generateCellKeys(
      latMin: center.latitude - 0.01,
      latMax: center.latitude + 0.01,
      lngMin: center.longitude - 0.01,
      lngMax: center.longitude + 0.01,
      config: config5km,
    );

    final intersect = keys2km.toSet().intersection(keys5km.toSet());

    expect(intersect, isEmpty, reason: 'Cell keys should not overlap between zoom levels');
  });

}
