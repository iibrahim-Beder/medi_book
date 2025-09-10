import 'package:medi_book/features/find_nearby_doctors/domain/helpers/s2_cell_calculator.dart';


void testCellKeyStability() {
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

  final Set<String> keys1 = S2CellCalculator.generateCellKeys(
    latMin: latMin,
    latMax: latMax,
    lngMin: lngMin,
    lngMax: lngMax,
    config: config,
  );

  final Set<String> keys2 = S2CellCalculator.generateCellKeys(
    latMin: latMin,
    latMax: latMax,
    lngMin: lngMin,
    lngMax: lngMax,
    config: config,
  );

  print('🔁 Comparing key sets...');
  bool isSame = areSetsEqual(keys1, keys2);
  print(isSame ? '✅ Keys are consistent!' : '❌ Keys are NOT consistent!');
}

bool areSetsEqual(Set<String> a, Set<String> b) {
  return a.length == b.length && a.difference(b).isEmpty;
}
