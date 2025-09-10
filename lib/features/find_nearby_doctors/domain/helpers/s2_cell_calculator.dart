// // class GridCellCalculator {
// //   static Map<String, dynamic> getCellSizeByZoom(double zoomLevel) {
// //     if (zoomLevel >= 11.0) {
// //       return {'size': 1.0, 'label': '1km'};
// //     } else {
// //       return {'size': 5.0, 'label': '5km'};
// //     }
// //   }

// //   static List<String> generateCellIds({
// //     required double latMin,
// //     required double latMax,
// //     required double lngMin,
// //     required double lngMax,
// //     required double cellSize,
// //     required String label,
// //   }) {
// //     List<String> cellIds = [];

// //     int latStart = (latMin / cellSize).floor();
// //     int latEnd = (latMax / cellSize).floor();
// //     int lngStart = (lngMin / cellSize).floor();
// //     int lngEnd = (lngMax / cellSize).floor();

// //     for (int lat = latStart; lat <= latEnd; lat++) {
// //       for (int lng = lngStart; lng <= lngEnd; lng++) {
// //         String cellId = 'cell_${label}_${lat}_${lng}';
// //         cellIds.add(cellId);
// //       }
// //     }

// //     return cellIds;
// //   }
// // }

// import 'dart:math';

// import 'package:h3_flutter/h3_flutter.dart';

// class S2CellCalculator {
//   /// Determine the cell configuration based on zoom level and viewport size (in km)
//   static CellConfig getCellSizeByZoomAndBBox(
//       double zoomLevel, double bboxWidthKm, double bboxHeightKm) {
//     // Define base config based on zoom level
//     late CellConfig baseConfig;

//     if (zoomLevel >= 14) {
//       baseConfig =
//           CellConfig(level: 15, size: 2.0, label: '2km'); // Detailed data
//     } else if (zoomLevel >= 12) {
//       baseConfig =
//           CellConfig(level: 14, size: 5.0, label: '5km'); // General data
//     } else if (zoomLevel >= 10) {
//       baseConfig = CellConfig(level: 13, size: 10.0, label: '10km');
//     } else if (zoomLevel >= 8) {
//       baseConfig = CellConfig(level: 12, size: 20.0, label: '20km');
//     } else if (zoomLevel >= 5) {
//       baseConfig = CellConfig(level: 11, size: 50.0, label: '50km');
//     } else if (zoomLevel >= 3) {
//       baseConfig = CellConfig(level: 10, size: 100.0, label: '100km');
//     } else {
//       baseConfig = CellConfig(level: 9, size: 200.0, label: '200km');
//     }

//     // Estimate how many cells would be required for the current view
//     double bboxArea = bboxWidthKm * bboxHeightKm;
//     double estimatedCells = bboxArea / (baseConfig.size * baseConfig.size);
//     double maxCellsAllowed =
//         500; // You can tweak this based on performance testing

//     // If too many cells would be shown, increase the cell size dynamically
//     if (estimatedCells > maxCellsAllowed) {
//       double scaleFactor = sqrt(
//           estimatedCells / maxCellsAllowed); // Increase size proportionally
//       double adjustedCellSize = baseConfig.size * scaleFactor;

//       // Adjust level for larger cells (optional logic)
//       int adjustedLevel = max(baseConfig.level - 1, 5);

//       return CellConfig(
//         level: adjustedLevel,
//         size: adjustedCellSize,
//         label: '${adjustedCellSize.toStringAsFixed(0)}km*',
//       );
//     }

//     // Otherwise, use the base config
//     return baseConfig;
//   }

//   static double roundCoordinate(double value, double precision) {
//     return (value / precision).round() * precision;
//   }

// // static List<String> generateCellKeys({
// //   required double latMin,
// //   required double latMax,
// //   required double lngMin,
// //   required double lngMax,
// //   required CellConfig config,
// // }) {
// //   final List<String> keys = [];
// //   final double cellSize = config.size / 111.32; // Convert km to degrees
// //   final double precision = 0.01; // قيمة التقريب (0.01 درجة)

// //   final int numCellsX = ((lngMax - lngMin) / cellSize).ceil();
// //   final int numCellsY = ((latMax - latMin) / cellSize).ceil();

// //   for (int i = 0; i < numCellsY; i++) {
// //     for (int j = 0; j < numCellsX; j++) {
// //       final double lat = latMin + i * cellSize;
// //       final double lng = lngMin + j * cellSize;

// //       // تقريب الإحداثيات
// //       final double roundedLat = roundCoordinate(lat, precision);
// //       final double roundedLng = roundCoordinate(lng, precision);

// //       // استخدام الإحداثيات المقربة في توليد الـ S2 cell
// //       final S2 s2Cell = S2.fromLatLng(LatLng(roundedLat, roundedLng), config.level);
// //       final String key = 'cell_${config.label}_${s2Cell.toString()}';
// //       keys.add(key);
// //     }
// //   }

// //   return keys;
// // }

// //   static List<String> generateCellKeys({
// //     required double latMin,
// //     required double latMax,
// //     required double lngMin,
// //     required double lngMax,
// //     required CellConfig config,
// //   }) {
// //     final List<String> keys = [];
// //     final double cellSize = config.size / 111.32; // Convert km to degrees

// //     double roundStep = 0.0001;

// //     final int numCellsX = ((lngMax - lngMin) / cellSize).ceil();
// //     final int numCellsY = ((latMax - latMin) / cellSize).ceil();

// //     for (int i = 0; i < numCellsY; i++) {
// //       for (int j = 0; j < numCellsX; j++) {
// //         final double lat = roundTo(latMin + i * cellSize, roundStep);
// //         final double lng = roundTo(lngMin + j * cellSize, roundStep);

// //         final S2 s2Cell = S2.fromLatLng(LatLng(lat, lng), config.level);
// //         final String key = 'cell_${config.label}_${s2Cell.toString()}';
// //         keys.add(key);
// //       }
// //     }

// //     return keys;
// //   }

// class S2CellCalculator {
//   static Future<List<String>> generateCellKeys({
//     required double latMin,
//     required double latMax,
//     required double lngMin,
//     required double lngMax,
//     required CellConfig config,
//   }) async {
//     final List<String> keys = [];

//     final h3 = H3Flutter(); // ✅ أنشئ كائن من H3Flutter

//     final int resolution = config.level;
//     final double step = 0.01;

//     for (double lat = latMin; lat <= latMax; lat += step) {
//       for (double lng = lngMin; lng <= lngMax; lng += step) {
//         final geoCoord = GeoCoord(lat: lat, lon: lng);
//         final h3Index = h3.geoToCell(geoCoord, resolution);
//         final key = 'cell_${config.label}_${h3Index.toString()}';

//         if (!keys.contains(key)) {
//           keys.add(key);
//         }
//       }
//     }

//     return keys;
//   }
// }

// static double roundTo(double value, double step) {
//   return (value / step).round() * step;
// }

// // static List<String> generateCellKeys({
// //   required double latMin,
// //   required double latMax,
// //   required double lngMin,
// //   required double lngMax,
// //   required CellConfig config,
// // }) {
// //   final List<String> keys = [];
// //   final double cellDegreeSize = config.size / 111.32; // km to degrees
// //   const double roundStep = 0.0001;

// //   final int countX = ((lngMax - lngMin) / cellDegreeSize).ceil();
// //   final int countY = ((latMax - latMin) / cellDegreeSize).ceil();

// //   for (int y = 0; y < countY; y++) {
// //     for (int x = 0; x < countX; x++) {
// //       final double lat = roundCoordinate(latMin + y * cellDegreeSize, roundStep);
// //       final double lng = roundCoordinate(lngMin + x * cellDegreeSize, roundStep);

// //       final String key = 'cell_${config.label}_${lat.toStringAsFixed(4)}_${lng.toStringAsFixed(4)}';

// //       keys.add(key);
// //     }
// //   }

// //   return keys;
// // }

// // static String formatCoordinate(double value) {
// //   const double roundStep = 0.0001;
// //   final rounded = (value / roundStep).round() * roundStep;
// //   return rounded.toStringAsFixed(4);
// // }

// //   static List<String> generateCellKeys({
// //     required double latMin,
// //     required double latMax,
// //     required double lngMin,
// //     required double lngMax,
// //     required CellConfig config,
// //   }) {
// //     final List<String> keys = [];

// //     final double latCellDegreeSize = config.size / 111.32;
// //     // تصحيح خط الطول حسب خط العرض الأدنى
// //     final double lngCellDegreeSize = config.size / (111.32 * cos(latMin * pi / 180));

// //     final int countX = ((lngMax - lngMin) / lngCellDegreeSize).ceil();
// //     final int countY = ((latMax - latMin) / latCellDegreeSize).ceil();

// //     for (int y = 0; y < countY; y++) {
// //       for (int x = 0; x < countX; x++) {
// //         final double lat = latMin + y * latCellDegreeSize;
// //         final double lng = lngMin + x * lngCellDegreeSize;

// //         final String latStr = formatCoordinate(lat);
// //         final String lngStr = formatCoordinate(lng);

// //         final String key = 'cell_${config.label}_$latStr\_$lngStr';

// //         keys.add(key);
// //       }
// //     }

// //     return keys;
// //   }
// }

// double roundTo(double value, double step) {
//   return (value / step).roundToDouble() * step;
// }

// class CellConfig {
//   final int level;
//   final double size;
//   final String label;

//   CellConfig({
//     required this.level,
//     required this.size,
//     required this.label,
//   });

//   Map<String, dynamic> toMap() {
//     return {
//       'level': level,
//       'size': size,
//       'label': label,
//     };
//   }

//   factory CellConfig.fromMap(Map<String, dynamic> map) {
//     return CellConfig(
//       level: map['level'] as int,
//       size: map['size'] as double,
//       label: map['label'] as String,
//     );
//   }
// }

// class GridCellCalculator {
//   static Map<String, dynamic> getCellSizeByZoom(double zoomLevel) {
//     if (zoomLevel >= 11.0) {
//       return {'size': 1.0, 'label': '1km'};
//     } else {
//       return {'size': 5.0, 'label': '5km'};
//     }
//   }

//   static List<String> generateCellIds({
//     required double latMin,
//     required double latMax,
//     required double lngMin,
//     required double lngMax,
//     required double cellSize,
//     required String label,
//   }) {
//     List<String> cellIds = [];

//     int latStart = (latMin / cellSize).floor();
//     int latEnd = (latMax / cellSize).floor();
//     int lngStart = (lngMin / cellSize).floor();
//     int lngEnd = (lngMax / cellSize).floor();

//     for (int lat = latStart; lat <= latEnd; lat++) {
//       for (int lng = lngStart; lng <= lngEnd; lng++) {
//         String cellId = 'cell_${label}_${lat}_${lng}';
//         cellIds.add(cellId);
//       }
//     }

//     return cellIds;
//   }
// }
import 'package:dartz/dartz.dart';
import 'package:h3_flutter/h3_flutter.dart';

class S2CellCalculator {
  /// Determine the cell configuration based on zoom level and viewport size (in km)

  static Map<int, double> h3AreaKm2 = {
    4: 1770.3,
    5: 252.9,
    6: 36.1,
    7: 5.16,
    8: 0.737,
  };
  static CellConfig getCellSizeByZoomAndBBox(
      double zoomLevel, double bboxWidthKm, double bboxHeightKm) {
    double resolution;

    String label;
    if (zoomLevel >= 14) {
      resolution = 8;
      label = '0.7km';
    } else if (zoomLevel >= 12) {
      resolution = 7;
      label = '5km';
    } else if (zoomLevel >= 10) {
      resolution = 6;
      label = '36km';
    } else if (zoomLevel >= 8) {
      resolution = 5;
      label = '253km';
    } else {
      resolution = 4;
      label = '1770km';
    }

    double cellArea = h3AreaKm2[resolution] ?? h3AreaKm2[6]!;

    double bboxArea = bboxWidthKm * bboxHeightKm;
    double estimatedCells = bboxArea / cellArea;
    double maxCellsAllowed = 500;

    if (estimatedCells > maxCellsAllowed) {
      for (double r = resolution - 1; r >= 4; r--) {
        double area = h3AreaKm2[r]!;
        if (bboxArea / area <= maxCellsAllowed) {
          resolution = r;
          label = '${h3AreaKm2[r]?.toStringAsFixed(0)}km';
          cellArea = area;
          break;
        }
      }
    }

    return CellConfig(zoomLevel: zoomLevel, size: cellArea, label: label);
  }

  // static CellConfig getCellSizeByZoomAndBBox(
  //     double zoomLevel, double bboxWidthKm, double bboxHeightKm) {
  //   // Define base config based on zoom level
  //   late CellConfig baseConfig;

  //   // if (zoomLevel >= 14) {
  //   //   baseConfig =
  //   //       CellConfig(level: 15, size: 2.0, label: '2km'); // Detailed data
  //   // } else if (zoomLevel >= 12) {
  //   //   baseConfig =
  //   //       CellConfig(level: 14, size: 5.0, label: '5km'); // General data
  //   // } else if (zoomLevel >= 10) {
  //   //   baseConfig = CellConfig(level: 13, size: 10.0, label: '10km');
  //   // } else if (zoomLevel >= 8) {
  //   //   baseConfig = CellConfig(level: 12, size: 20.0, label: '20km');
  //   // } else if (zoomLevel >= 5) {
  //   //   baseConfig = CellConfig(level: 11, size: 50.0, label: '50km');
  //   // } else if (zoomLevel >= 3) {
  //   //   baseConfig = CellConfig(level: 10, size: 100.0, label: '100km');
  //   // } else {
  //   //   baseConfig = CellConfig(level: 9, size: 200.0, label: '200km');
  //   // }

  // if (zoomLevel >= 14) {
  //   return 8; // ~0.74 km²
  // } else if (zoomLevel >= 12) {
  //   return 7; // ~5 km²
  // } else if (zoomLevel >= 10) {
  //   return 6; // ~36 km²
  // } else if (zoomLevel >= 8) {
  //   return 5; // ~253 km²
  // } else {
  //   return 4; // ≥ 1,770 km²
  // }

  //   // Estimate how many cells would be required for the current view
  //   double bboxArea = bboxWidthKm * bboxHeightKm;
  //   double estimatedCells = bboxArea / (baseConfig.size * baseConfig.size);
  //   double maxCellsAllowed =
  //       500; // You can tweak this based on performance testing

  //   // If too many cells would be shown, increase the cell size dynamically
  //   if (estimatedCells > maxCellsAllowed) {
  //     double scaleFactor = sqrt(
  //         estimatedCells / maxCellsAllowed); // Increase size proportionally
  //     double adjustedCellSize = baseConfig.size * scaleFactor;

  //     // Adjust level for larger cells (optional logic)
  //     int adjustedLevel = max(baseConfig.level - 1, 5);

  //     return CellConfig(
  //       level: adjustedLevel,
  //       size: adjustedCellSize,
  //       label: '${adjustedCellSize.toStringAsFixed(0)}km*',
  //     );
  //   }

  //   // Otherwise, use the base config
  //   return baseConfig;
  // }

  static double roundCoordinate(double value, double precision) {
    return (value / precision).round() * precision;
  }

  static Set<String> generateCellKeys({
    required double latMin,
    required double latMax,
    required double lngMin,
    required double lngMax,
    required CellConfig config,
  }) {
    final Set<String> keys = {};
    final h3 = const H3Factory().load();

    
    final int resolution = getH3ResolutionFromZoom(config.zoomLevel);
    print("*******************");
    print(" Zoom Level: ${config.zoomLevel}");
    print(" Resolution: $resolution");

    final double step = 0.01;

    for (double lat = latMin; lat <= latMax; lat += step) {
      for (double lng = lngMin; lng <= lngMax; lng += step) {
        final geoCoord = GeoCoord(lat: lat, lon: lng);
        final h3Index = h3.geoToCell(geoCoord, resolution);
        final key = 'cell_${config.label}_${h3Index.toString()}';

        if (!keys.contains(key)) {
          keys.add(key);
        }

        // final area = h3.cellArea(h3Index, H3Units.m);
        // final areaKm2 = area / 1_000_000;
        // print("Cell area: $areaKm2 km²");
      }
    }

    return keys;
  }
}

class CellConfig {
  final double zoomLevel;
  final double size;
  final String label;

  CellConfig({
    required this.zoomLevel,
    required this.size,
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return {
      'level': zoomLevel,
      'size': size,
      'label': label,
    };
  }

  factory CellConfig.fromMap(Map<String, dynamic> map) {
    return CellConfig(
      zoomLevel: map['level'] as double,
      size: map['size'] as double,
      label: map['label'] as String,
    );
  }
}

int getH3ResolutionFromZoom(double zoomLevel) {
  if (zoomLevel >= 14) {
    return 8; // ~0.74 km²
  } else if (zoomLevel >= 12) {
    return 7; // ~5 km²
  } else if (zoomLevel >= 10) {
    return 6; // ~36 km²
  } else if (zoomLevel >= 8) {
    return 5; // ~253 km²
  } else if (zoomLevel >= 4) {
    return 4; // ≥ 1,770 km²
  } else {
    return 0; // 
  }
}
// int getH3ResolutionByZoom(double zoomLevel) {
//   if (zoomLevel >= 15) return 10;  
//   if (zoomLevel >= 12) return 9;   
//   if (zoomLevel >= 9) return 8;    
//   if (zoomLevel >= 6) return 7;    
//   if (zoomLevel >= 4) return 6;    
//   if (zoomLevel >= 2) return 5;    
//   return 4;                        
// }