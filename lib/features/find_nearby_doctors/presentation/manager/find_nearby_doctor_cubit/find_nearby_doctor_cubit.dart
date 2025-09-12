import 'dart:async';
import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/helpers/compute_helpers.dart';
import 'package:medi_book/features/home/domain/entities/doctor.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:medi_book/features/find_nearby_doctors/data/caching/nearby_doctor_cell_cache.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/location_with_doctors.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/nearby_doctors_result.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/helpers/s2_cell_calculator.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_state.dart';
import 'package:h3_dart/h3_dart.dart' hide H3Factory;

class FindNearbyDoctorCubit extends Cubit<FindNearbyDoctorState> {
  FindNearbyDoctorCubit([this.specialties, this.doctor])
      : super(FindNearbyDoctorState.initial());

  List<Speciality>? specialties;
  Doctor? doctor;
  LatLngBounds? _previousBounds;
  double? _previousZoomLevel;
  Timer? _debounceTimer;
  int _mapIdleRequestId = 0;
  double _minMovementDelta = 0;
  double _minZoomDelta = 0.2;
  DateTime? _lastRequestTime;
  final Duration _throttleDuration = Duration(milliseconds: 300);

  Timer? _cameraMoveThrottleTimer;

// Stores previous center point of the map to compare movement
  LatLng? _previousCenter;

  GoogleMapController? _mapController;

  void setMapController(GoogleMapController controller) {
    _mapController = controller;
  }

  void clearSelectedLocationWithDoctors() {
    emit(state.copyWith(selectedLocationWithDoctors: null));
  }

  void updateSelectedLocationWithDoctors(LocationWithDoctors? newDoctor) {
    emit(state.copyWith(selectedLocationWithDoctors: newDoctor));
  }

  void hideDoctorCard() {
    emit(state.copyWith(doctorCardVisible: false));
  }

  void showDoctorCard() {
    emit(state.copyWith(doctorCardVisible: true));
  }

  void updateSearchCenter(LatLng newCenter) {
    // Cancel previous debounce timer if still active
    _debounceTimer?.cancel();

    // Start a new debounce timer for 500ms
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      // Update the state with new center of the circle
      emit(state.copyWith(
        searchCenter: newCenter,
        // You can also trigger new API call here for doctors near newCenter
      ));
    });
  }

  Future<void> loadInitialMapData() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    // Check location services
    bool enabled = await Geolocator.isLocationServiceEnabled();
    if (!enabled) {
      emit(state.copyWith(
          isLoading: false, errorMessage: "Location services are disabled"));
      return;
    }

    // Permissions
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(state.copyWith(
            isLoading: false, errorMessage: "Permission denied"));
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(state.copyWith(
          isLoading: false, errorMessage: "Permission denied permanently"));
      return;
    }

    // Get current location
    Position position = await Geolocator.getCurrentPosition();

    emit(state.copyWith(
      userLocation: LatLng(position.latitude, position.longitude),
      isLoading: false,
      errorMessage: null,
      cameraPosition: CameraPosition(
        target: LatLng(position.latitude, position.longitude),
        zoom: 12,
      ),
    ));
  }

  Future<void> fetchNearbyDoctors() async {
    emit(state.copyWith(
        fetchedNearbyDoctorsState:
            const FetchedNearbyDoctorsState(isFetching: true)));
  }

  bool _isBoundsSimilar(LatLngBounds a, LatLngBounds b, double zoomLevel) {
    final double delta = getMinDeltaFromZoom(zoomLevel);
    // final double delta = _minMovementDelta;
    final latDelta = (a.northeast.latitude - b.northeast.latitude).abs();
    final lngDelta = (a.northeast.longitude - b.northeast.longitude).abs();
    final latDeltaSW = (a.southwest.latitude - b.southwest.latitude).abs();
    final lngDeltaSW = (a.southwest.longitude - b.southwest.longitude).abs();

    return latDelta < delta &&
        lngDelta < delta &&
        latDeltaSW < delta &&
        lngDeltaSW < delta;
  }

  void onMapIdle(LatLngBounds bounds, double zoomLevel) async {
    final now = DateTime.now();

    if (_lastRequestTime != null &&
        now.difference(_lastRequestTime!) < _throttleDuration) {
      print("******************************");
      print('⏳ Throttling active, skipping request');
      return;
    }
    // _debounceTimer = Timer(Duration(milliseconds: 0), () async {
    // Check if movement is insignificant
    if (_previousBounds != null &&
        _isBoundsSimilar(bounds, _previousBounds!, zoomLevel) &&
        (_previousZoomLevel != null &&
            (zoomLevel - _previousZoomLevel!).abs() < 0.2)) {
      print('🔁 Movement too small for resolution, skipping processing.');
      return;
    }
    _lastRequestTime = now;
    final int requestId = ++_mapIdleRequestId;

    // emit(state.copyWith(
    //   fetchedNearbyDoctorsState: FetchedNearbyDoctorsState(
    //     isFetching: true,
    //     errorMessage: null,
    //   ),
    // ));

    // // print('🔄 Cache keys at start: ${NearbyDoctorCellCache.cachedKeys()}');
    // print({NearbyDoctorCellCache.cachedKeys().length});
    // print('🔍 onMapIdle triggered');
    // print(
    //     '🗺️ Bounds: NE(${bounds.northeast.latitude}, ${bounds.northeast.longitude}) | SW(${bounds.southwest.latitude}, ${bounds.southwest.longitude})');
    // print('🔍 Zoom Level: $zoomLevel');
    print("************* onMapIdle Triggered ****************");
    print(_previousZoomLevel);
    handleZoomChange(
        _previousZoomLevel ?? zoomLevel, zoomLevel); 
    _previousZoomLevel = zoomLevel;

    final CellConfig config = S2CellCalculator.getCellSizeByZoomAndBBox(
      zoomLevel,
      bounds.northeast.latitude - bounds.southwest.latitude,
      bounds.northeast.longitude - bounds.southwest.longitude,
    );

    print(
        '📍 Zoom Level: $zoomLevel, Using CellConfig: level=${config.zoomLevel}, size=${config.size}, label=${config.label}');

    final stopwatch = Stopwatch()..start();

    final Set<String> allCellKeys = await computeGenerateCellKeys(
      latMin: bounds.southwest.latitude,
      latMax: bounds.northeast.latitude,
      lngMin: bounds.southwest.longitude,
      lngMax: bounds.northeast.longitude,
      config: config,
    );

    stopwatch.stop();
    print(
        '⏱️ computeGenerateCellKeys took: ${stopwatch.elapsedMilliseconds} ms');

    if (requestId != _mapIdleRequestId) {
      print("⚠️ Ignoring outdated computeGenerateCellKeys result");
      return;
    }

    print('📦 Total cell keys generated: ${allCellKeys.length}');
    allCellKeys.take(5).forEach((key) => print('🔑 Sample cell key: $key'));

    final Duration cacheTTL = Duration(minutes: 5);

    Set<String> cellsToFetch = CellsToFetch(allCellKeys, cacheTTL);

    if (requestId != _mapIdleRequestId) {
      print("⚠️ Ignoring outdated computeFreshCells result");
      return;
    }

    // Set<String> cachedCells = CachedCells(allCellKeys, cacheTTL);
    // await computeCachedFreshCells(allCellKeys, cacheTTL);

    if (requestId != _mapIdleRequestId) {
      print("⚠️ Ignoring outdated computeCachedFreshCells result");
      return;
    }

    // print('💾 Cached cells count From allGCellKeys: ${cachedCells.length}');
    // cachedCells.take(3).forEach((key) => print('💾 Cached cell key: $key'));

    print('🌐 Cells to fetch count From allGCellKeys: ${cellsToFetch.length}');
    // cellsToFetch.take(3).forEach((key) => print('🌐 Fetch cell key: $key'));

    // List<LocationWithDoctors> locationsFromCachedCells =
    //     await LocationsFromCachedCells(cachedCells);

    if (requestId != _mapIdleRequestId) {
      print("⚠️ Ignoring outdated LocationsFromCachedCells result");
      return;
    }

    if (cellsToFetch.isEmpty) {
      emit(state.copyWith(
        fetchedNearbyDoctorsState: FetchedNearbyDoctorsState(
          isFetching: false,
          errorMessage: null,
        ),
      ));
      _previousBounds = bounds;
      // _previousZoomLevel = zoomLevel;
      return;
    }

    if (cellsToFetch.isNotEmpty) {
      emit(state.copyWith(
        fetchedNearbyDoctorsState: FetchedNearbyDoctorsState(
          isFetching: true,
          errorMessage: null,
        ),
      ));
    }

    await Future.delayed(Duration(seconds: 2));
    List<LocationWithDoctors> newlyFetched = [];

    for (var cellKey in cellsToFetch) {
      NearbyDoctorCellCache.set(cellKey, []);
      newlyFetched.addAll([]);
    }

    if (requestId != _mapIdleRequestId) {
      print("⚠️ Ignoring outdated fetch loop result");
      emit(state.copyWith(
        fetchedNearbyDoctorsState: FetchedNearbyDoctorsState(
          isFetching: false,
        ),
      ));

      return;
    }

    final uniqueDoctors = <String, LocationWithDoctors>{};

    for (var doc in [
      ...state.fetchedNearbyDoctorsState?.data?.groupedByLocation ?? [],
      // ...locationsFromCachedCells,
      ...newlyFetched,
    ]) {
      uniqueDoctors[doc.doctor.id.toString()] = doc;
    }

    final allData = uniqueDoctors.values.toList();

    print('📊 Total doctors combined: ${allData.length}');

    if (allData.isEmpty) {
      print('⚠️ No new data and cache empty, keeping previous state.');
      return;
    }

    emit(state.copyWith(
      fetchedNearbyDoctorsState: FetchedNearbyDoctorsState(
        isFetching: false,
        data: NearbyDoctorsResult(
          groupedByLocation: allData,
          generalDoctorsList: [],
        ),
        errorMessage: null,
      ),
    ));

    _previousBounds = bounds;
    // _previousZoomLevel = zoomLevel;

    print("************* onMapIdle finished ****************");

    // print('🔄 Cache keys at start: ${NearbyDoctorCellCache.cachedKeys()}');
    // print({NearbyDoctorCellCache.cachedKeys().length});
    // });
  }

  void handleZoomChange(double oldZoom, double newZoom) {
    final double zoomThreshold = 2.0;

    if ((newZoom - oldZoom).abs() >= zoomThreshold) {
      print('****** C L E A CAHCE ******');
      NearbyDoctorCellCache.clear();
    }
  }

  void onCameraMove(CameraPosition position) {
    // Throttle to avoid excessive triggering
    if (_cameraMoveThrottleTimer?.isActive ?? false) return;

    _cameraMoveThrottleTimer = Timer(_throttleDuration, () async {
      print("************* onCameraMove Triggered ****************");
      print(
          '📦 Cached keys count: ${NearbyDoctorCellCache.cachedKeys().length}');

      final bounds = await _mapController!.getVisibleRegion();
      final zoomLevel = await _mapController!.getZoomLevel();
      final cacheTTL = Duration(minutes: 5);

      final LatLng newCenter = LatLng(
        (bounds.northeast.latitude + bounds.southwest.latitude) / 2,
        (bounds.northeast.longitude + bounds.southwest.longitude) / 2,
      );

      // Check if movement is significant based on zoom level
      if (_previousCenter != null) {
        final double latDelta =
            (newCenter.latitude - _previousCenter!.latitude).abs();
        final double lngDelta =
            (newCenter.longitude - _previousCenter!.longitude).abs();
        final double moveThreshold = getMinDeltaFromZoom(zoomLevel);

        if (latDelta < moveThreshold && lngDelta < moveThreshold) {
          print(
              "🔁 Movement too small based on zoom level threshold ($moveThreshold), skipping.");
          return;
        }
      }

      // Update previous center for next movement comparison
      _previousCenter = newCenter;

      // Generate all cell keys visible on the screen
      final Set<String> allCellKeys = await computeGenerateCellKeys(
        latMin: bounds.southwest.latitude,
        latMax: bounds.northeast.latitude,
        lngMin: bounds.southwest.longitude,
        lngMax: bounds.northeast.longitude,
        config: S2CellCalculator.getCellSizeByZoomAndBBox(
          zoomLevel,
          bounds.northeast.latitude - bounds.southwest.latitude,
          bounds.northeast.longitude - bounds.southwest.longitude,
        ),
      );

      print('📦 All cell keys generated: ${allCellKeys.length}');

      // Filter only valid (non-expired) cached cells
      final Set<String> cachedCells = CachedCells(allCellKeys, cacheTTL);

      print('💾 Cached cells found: ${cachedCells.length}');

      // Get cached data from those cells
      final List<LocationWithDoctors> cachedData =
          await LocationsFromCachedCells(cachedCells);

      // If any cached data is found, emit it
      if (cachedData.isNotEmpty) {
        emit(state.copyWith(
          fetchedNearbyDoctorsState: FetchedNearbyDoctorsState(
            data: NearbyDoctorsResult(
              groupedByLocation: cachedData,
            ),
            errorMessage: null,
          ),
        ));
        print("📍 Displaying cached data during map movement");
      } else {
        print("⚠️ No cached data available for this position");
      }
      print("************* onCameraMove finished ****************");
    });
  }

  Future<List<LocationWithDoctors>> LocationsFromCachedCells(
      Set<String> cachedCells) async {
    List<LocationWithDoctors> cachedLocations = [];
    for (var cellKey in cachedCells) {
      final data = NearbyDoctorCellCache.get(cellKey);
      if (data != null) {
        cachedLocations.addAll(data);
      }
    }
    return cachedLocations + await generateFixedDoctors();
  }

  Set<String> CachedCells(Set<String> cellKeys, Duration cacheTTL) {
    if (cellKeys.isNotEmpty) {
      return cellKeys
          .where((key) => NearbyDoctorCellCache.isFresh(key, cacheTTL))
          .toSet();
    }

    print("*** (()) ***");
    // print('💾 Cached cells: $cachedCells');
    return cellKeys;
  }

  Set<String> CellsToFetch(Set<String> cellKeys, Duration cacheTTL) {
    final cellsToFetch = cellKeys.where((key) {
      final fresh = NearbyDoctorCellCache.isFresh(key, cacheTTL);
      return !fresh;
    }).toSet();
    // print('🔄 Cells to fetch: $cellsToFetch');
    return cellsToFetch.toSet();
  }
}

Future<List<LocationWithDoctors>> generateFixedDoctors() async {
  final List<LatLng> fixedLocations = [
    // LatLng(30.3000, 30.4600),
    // LatLng(30.3100, 30.4700),
    // LatLng(30.3200, 30.4800),
    // LatLng(30.3200, 30.4900),
    // LatLng(30.3350, 30.4950),
    // LatLng(30.3163 + 0.0010, 30.5231 + 0.0015),
    // LatLng(30.3163 - 0.0012, 30.5231 - 0.0010),
    // LatLng(30.3163 + 0.0005, 30.5231 - 0.0017),
    // LatLng(30.3163 - 0.0015, 30.5231 + 0.0007),
    // LatLng(30.3163 + 0.0017, 30.5231 - 0.0008),
    // LatLng(30.3600, 30.4780),
    // LatLng(30.3620, 30.4790),
    // LatLng(30.3635, 30.4775),
    // LatLng(30.3615, 30.4760),
    // LatLng(30.3590, 30.4795),
    // LatLng(30.3826 + 0.0010, 30.4823 + 0.0015),
    // LatLng(30.3826 - 0.0012, 30.4823 - 0.0010),
    // LatLng(30.3826 + 0.0005, 30.4823 - 0.0017),
    // LatLng(30.3826 - 0.0015, 30.4823 + 0.0007),
    // LatLng(30.3826 + 0.0017, 30.4823 - 0.0008),
    // LatLng(30.6186 + 0.0010, 30.4308 + 0.0010),
    // LatLng(30.6186 + 0.0020, 30.4308 + 0.0020),
    // LatLng(30.6186 - 0.0015, 30.4308 - 0.0015),
    // LatLng(30.6186 - 0.0025, 30.4308 + 0.0010),
    // LatLng(30.6186 + 0.0015, 30.4308 - 0.0020),

    LatLng(30.35, 30.73),
    LatLng(30.33, 30.75),
    LatLng(30.31, 30.72),
    LatLng(30.34, 30.70),
    LatLng(30.32, 30.74)
  ];

  List<LocationWithDoctors> list = [];

  for (int i = 0; i < fixedLocations.length; i++) {
    final doctor = Doctor(
      id: i + 1,
      firstName: 'Doctor',
      lastName: '${i + 1}',
      spiciality: 'Specialist',
      location: 'Fixed Location ${i + 1}',
      rating: 4.0 + (i % 2) * 0.5,
      numberOfReviews: 10 + i * 3,
      imageUrl: 'https://example.com/doctor${i + 1}.jpg',
    );

    final icon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size(48, 48)),
      'assets/images/markar_location.png',
    );

    list.add(LocationWithDoctors(
      location: fixedLocations[i],
      doctor: doctor,
      icon: icon,
    ));
  }

  return list;
}

// double getMinDeltaFromZoom(double zoomLevel) {
//   if (zoomLevel >= 14) {
//     return 0.005; // resolution 8
//   } else if (zoomLevel >= 12) {
//     return 0.01; // resolution 7
//   } else if (zoomLevel >= 10) {
//     return 0.03; // resolution 6
//   } else if (zoomLevel >= 8) {
//     return 0.05; // resolution 5
//   } else {
//     return 0.1; // resolution 4
//   }
// }

double getMinDeltaFromZoom(double zoomLevel) {
  if (zoomLevel >= 14) {
    return 0.005;
  } else if (zoomLevel >= 12) {
    return 0.01;
  } else if (zoomLevel >= 10) {
    return 0.03;
  } else if (zoomLevel >= 8) {
    return 0.05;
  } else if (zoomLevel >= 6.5) {
    return 0.1;
  } else if (zoomLevel >= 6) {
    return 0.15;
  } else if (zoomLevel >= 2) {
    return 0.2;
  } else {
    return 0.3;
  }
}
