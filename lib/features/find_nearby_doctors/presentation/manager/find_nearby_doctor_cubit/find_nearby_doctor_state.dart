import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medi_book/features/find_nearby_doctors/data/models/request/doctor_map_filters_model.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/location_with_doctors.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/nearby_doctors_result.dart';

part 'find_nearby_doctor_state.freezed.dart';

enum SortBy {
  distance,
  relevance,
  rating,
}
@freezed
class FindNearbyDoctorState with _$FindNearbyDoctorState {
  const factory FindNearbyDoctorState({
    @Default(false) bool isLoading,
    LatLng? userLocation,
    CameraPosition? cameraPosition,
    LatLng? searchCenter, // Center of the search area
    LocationWithDoctors? selectedLocationWithDoctors,
    @Default(true) bool doctorCardVisible,
    required FetchedNearbyDoctorsState? fetchedNearbyDoctorsState,
    DoctorMapFiltersModel? doctorMapFilters,
    SortBy? sortBy,
    String? errorMessage,
  }) = _FindNearbyDoctorState;

  /// Async static method to initialize the state
  factory FindNearbyDoctorState.initial(){
    return FindNearbyDoctorState(
      isLoading: false,
      userLocation: null,
      cameraPosition: null,
      searchCenter: null,
      selectedLocationWithDoctors: null,
      doctorCardVisible: true,
      fetchedNearbyDoctorsState:FetchedNearbyDoctorsState.initial(),
      errorMessage: null,
      doctorMapFilters: DoctorMapFiltersModel(currentlyWorking: true, ratingMin: 4),
      sortBy: SortBy.distance,
    );
  }
}

@freezed
class FetchedNearbyDoctorsState with _$FetchedNearbyDoctorsState {
  const factory FetchedNearbyDoctorsState({
    @Default(false) bool isFetching,
    NearbyDoctorsResult? data,
    String? errorMessage,
  }) = _FetchedNearbyDoctorsState;

  /// Async static method to initialize the fetched doctors state
  factory FetchedNearbyDoctorsState.initial(){
    return FetchedNearbyDoctorsState(
      isFetching: false,
      data: NearbyDoctorsResult.empty(),
      errorMessage: null,
    );
  }
}

@freezed
class DoctorMapFiltersState with _$DoctorMapFiltersState {
  const factory DoctorMapFiltersState.fetchNearbyDoctors() = _DoctorMapFiltersState;
}
