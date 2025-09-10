import 'package:medi_book/features/find_nearby_doctors/domain/helpers/s2_cell_calculator.dart';
import 'package:medi_book/core/utils/geo_utils.dart'; // نفترض إن فيها حساب المسافات بين نقطتين

class GetCellsUseCase {
  Set<String> call({
    required double latMin,
    required double latMax,
    required double lngMin,
    required double lngMax,
    required double zoomLevel,
  }) {
    final bboxWidthKm = GeoUtils.calculateDistanceInKm(
      latMin,
      lngMin,
      latMin,
      lngMax,
    );

    final bboxHeightKm = GeoUtils.calculateDistanceInKm(
      latMin,
      lngMin,
      latMax,
      lngMin,
    );

    final config = S2CellCalculator.getCellSizeByZoomAndBBox(
      zoomLevel,
      bboxWidthKm,
      bboxHeightKm,
    );

    return S2CellCalculator.generateCellKeys(
      latMin: latMin,
      latMax: latMax,
      lngMin: lngMin,
      lngMax: lngMax,
      config: config,
    );
  }
}
