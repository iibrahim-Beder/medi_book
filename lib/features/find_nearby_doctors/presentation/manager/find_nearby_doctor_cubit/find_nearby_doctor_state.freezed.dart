// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_nearby_doctor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FindNearbyDoctorState {
  bool get isLoading => throw _privateConstructorUsedError;
  LatLng? get userLocation => throw _privateConstructorUsedError;
  CameraPosition? get cameraPosition => throw _privateConstructorUsedError;
  LatLng? get searchCenter =>
      throw _privateConstructorUsedError; // Center of the search area
  LocationWithDoctors? get selectedLocationWithDoctors =>
      throw _privateConstructorUsedError;
  bool get doctorCardVisible => throw _privateConstructorUsedError;
  FetchedNearbyDoctorsState? get fetchedNearbyDoctorsState =>
      throw _privateConstructorUsedError;
  DoctorMapFiltersModel? get doctorMapFilters =>
      throw _privateConstructorUsedError;
  SortBy? get sortBy => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of FindNearbyDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FindNearbyDoctorStateCopyWith<FindNearbyDoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindNearbyDoctorStateCopyWith<$Res> {
  factory $FindNearbyDoctorStateCopyWith(FindNearbyDoctorState value,
          $Res Function(FindNearbyDoctorState) then) =
      _$FindNearbyDoctorStateCopyWithImpl<$Res, FindNearbyDoctorState>;
  @useResult
  $Res call(
      {bool isLoading,
      LatLng? userLocation,
      CameraPosition? cameraPosition,
      LatLng? searchCenter,
      LocationWithDoctors? selectedLocationWithDoctors,
      bool doctorCardVisible,
      FetchedNearbyDoctorsState? fetchedNearbyDoctorsState,
      DoctorMapFiltersModel? doctorMapFilters,
      SortBy? sortBy,
      String? errorMessage});

  $FetchedNearbyDoctorsStateCopyWith<$Res>? get fetchedNearbyDoctorsState;
}

/// @nodoc
class _$FindNearbyDoctorStateCopyWithImpl<$Res,
        $Val extends FindNearbyDoctorState>
    implements $FindNearbyDoctorStateCopyWith<$Res> {
  _$FindNearbyDoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FindNearbyDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userLocation = freezed,
    Object? cameraPosition = freezed,
    Object? searchCenter = freezed,
    Object? selectedLocationWithDoctors = freezed,
    Object? doctorCardVisible = null,
    Object? fetchedNearbyDoctorsState = freezed,
    Object? doctorMapFilters = freezed,
    Object? sortBy = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userLocation: freezed == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      cameraPosition: freezed == cameraPosition
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
      searchCenter: freezed == searchCenter
          ? _value.searchCenter
          : searchCenter // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      selectedLocationWithDoctors: freezed == selectedLocationWithDoctors
          ? _value.selectedLocationWithDoctors
          : selectedLocationWithDoctors // ignore: cast_nullable_to_non_nullable
              as LocationWithDoctors?,
      doctorCardVisible: null == doctorCardVisible
          ? _value.doctorCardVisible
          : doctorCardVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchedNearbyDoctorsState: freezed == fetchedNearbyDoctorsState
          ? _value.fetchedNearbyDoctorsState
          : fetchedNearbyDoctorsState // ignore: cast_nullable_to_non_nullable
              as FetchedNearbyDoctorsState?,
      doctorMapFilters: freezed == doctorMapFilters
          ? _value.doctorMapFilters
          : doctorMapFilters // ignore: cast_nullable_to_non_nullable
              as DoctorMapFiltersModel?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FindNearbyDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FetchedNearbyDoctorsStateCopyWith<$Res>? get fetchedNearbyDoctorsState {
    if (_value.fetchedNearbyDoctorsState == null) {
      return null;
    }

    return $FetchedNearbyDoctorsStateCopyWith<$Res>(
        _value.fetchedNearbyDoctorsState!, (value) {
      return _then(_value.copyWith(fetchedNearbyDoctorsState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FindNearbyDoctorStateImplCopyWith<$Res>
    implements $FindNearbyDoctorStateCopyWith<$Res> {
  factory _$$FindNearbyDoctorStateImplCopyWith(
          _$FindNearbyDoctorStateImpl value,
          $Res Function(_$FindNearbyDoctorStateImpl) then) =
      __$$FindNearbyDoctorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      LatLng? userLocation,
      CameraPosition? cameraPosition,
      LatLng? searchCenter,
      LocationWithDoctors? selectedLocationWithDoctors,
      bool doctorCardVisible,
      FetchedNearbyDoctorsState? fetchedNearbyDoctorsState,
      DoctorMapFiltersModel? doctorMapFilters,
      SortBy? sortBy,
      String? errorMessage});

  @override
  $FetchedNearbyDoctorsStateCopyWith<$Res>? get fetchedNearbyDoctorsState;
}

/// @nodoc
class __$$FindNearbyDoctorStateImplCopyWithImpl<$Res>
    extends _$FindNearbyDoctorStateCopyWithImpl<$Res,
        _$FindNearbyDoctorStateImpl>
    implements _$$FindNearbyDoctorStateImplCopyWith<$Res> {
  __$$FindNearbyDoctorStateImplCopyWithImpl(_$FindNearbyDoctorStateImpl _value,
      $Res Function(_$FindNearbyDoctorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FindNearbyDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userLocation = freezed,
    Object? cameraPosition = freezed,
    Object? searchCenter = freezed,
    Object? selectedLocationWithDoctors = freezed,
    Object? doctorCardVisible = null,
    Object? fetchedNearbyDoctorsState = freezed,
    Object? doctorMapFilters = freezed,
    Object? sortBy = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$FindNearbyDoctorStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userLocation: freezed == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      cameraPosition: freezed == cameraPosition
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
      searchCenter: freezed == searchCenter
          ? _value.searchCenter
          : searchCenter // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      selectedLocationWithDoctors: freezed == selectedLocationWithDoctors
          ? _value.selectedLocationWithDoctors
          : selectedLocationWithDoctors // ignore: cast_nullable_to_non_nullable
              as LocationWithDoctors?,
      doctorCardVisible: null == doctorCardVisible
          ? _value.doctorCardVisible
          : doctorCardVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchedNearbyDoctorsState: freezed == fetchedNearbyDoctorsState
          ? _value.fetchedNearbyDoctorsState
          : fetchedNearbyDoctorsState // ignore: cast_nullable_to_non_nullable
              as FetchedNearbyDoctorsState?,
      doctorMapFilters: freezed == doctorMapFilters
          ? _value.doctorMapFilters
          : doctorMapFilters // ignore: cast_nullable_to_non_nullable
              as DoctorMapFiltersModel?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FindNearbyDoctorStateImpl implements _FindNearbyDoctorState {
  const _$FindNearbyDoctorStateImpl(
      {this.isLoading = false,
      this.userLocation,
      this.cameraPosition,
      this.searchCenter,
      this.selectedLocationWithDoctors,
      this.doctorCardVisible = true,
      required this.fetchedNearbyDoctorsState,
      this.doctorMapFilters,
      this.sortBy,
      this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final LatLng? userLocation;
  @override
  final CameraPosition? cameraPosition;
  @override
  final LatLng? searchCenter;
// Center of the search area
  @override
  final LocationWithDoctors? selectedLocationWithDoctors;
  @override
  @JsonKey()
  final bool doctorCardVisible;
  @override
  final FetchedNearbyDoctorsState? fetchedNearbyDoctorsState;
  @override
  final DoctorMapFiltersModel? doctorMapFilters;
  @override
  final SortBy? sortBy;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FindNearbyDoctorState(isLoading: $isLoading, userLocation: $userLocation, cameraPosition: $cameraPosition, searchCenter: $searchCenter, selectedLocationWithDoctors: $selectedLocationWithDoctors, doctorCardVisible: $doctorCardVisible, fetchedNearbyDoctorsState: $fetchedNearbyDoctorsState, doctorMapFilters: $doctorMapFilters, sortBy: $sortBy, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindNearbyDoctorStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation) &&
            (identical(other.cameraPosition, cameraPosition) ||
                other.cameraPosition == cameraPosition) &&
            (identical(other.searchCenter, searchCenter) ||
                other.searchCenter == searchCenter) &&
            (identical(other.selectedLocationWithDoctors,
                    selectedLocationWithDoctors) ||
                other.selectedLocationWithDoctors ==
                    selectedLocationWithDoctors) &&
            (identical(other.doctorCardVisible, doctorCardVisible) ||
                other.doctorCardVisible == doctorCardVisible) &&
            (identical(other.fetchedNearbyDoctorsState,
                    fetchedNearbyDoctorsState) ||
                other.fetchedNearbyDoctorsState == fetchedNearbyDoctorsState) &&
            (identical(other.doctorMapFilters, doctorMapFilters) ||
                other.doctorMapFilters == doctorMapFilters) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      userLocation,
      cameraPosition,
      searchCenter,
      selectedLocationWithDoctors,
      doctorCardVisible,
      fetchedNearbyDoctorsState,
      doctorMapFilters,
      sortBy,
      errorMessage);

  /// Create a copy of FindNearbyDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindNearbyDoctorStateImplCopyWith<_$FindNearbyDoctorStateImpl>
      get copyWith => __$$FindNearbyDoctorStateImplCopyWithImpl<
          _$FindNearbyDoctorStateImpl>(this, _$identity);
}

abstract class _FindNearbyDoctorState implements FindNearbyDoctorState {
  const factory _FindNearbyDoctorState(
      {final bool isLoading,
      final LatLng? userLocation,
      final CameraPosition? cameraPosition,
      final LatLng? searchCenter,
      final LocationWithDoctors? selectedLocationWithDoctors,
      final bool doctorCardVisible,
      required final FetchedNearbyDoctorsState? fetchedNearbyDoctorsState,
      final DoctorMapFiltersModel? doctorMapFilters,
      final SortBy? sortBy,
      final String? errorMessage}) = _$FindNearbyDoctorStateImpl;

  @override
  bool get isLoading;
  @override
  LatLng? get userLocation;
  @override
  CameraPosition? get cameraPosition;
  @override
  LatLng? get searchCenter; // Center of the search area
  @override
  LocationWithDoctors? get selectedLocationWithDoctors;
  @override
  bool get doctorCardVisible;
  @override
  FetchedNearbyDoctorsState? get fetchedNearbyDoctorsState;
  @override
  DoctorMapFiltersModel? get doctorMapFilters;
  @override
  SortBy? get sortBy;
  @override
  String? get errorMessage;

  /// Create a copy of FindNearbyDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindNearbyDoctorStateImplCopyWith<_$FindNearbyDoctorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchedNearbyDoctorsState {
  bool get isFetching => throw _privateConstructorUsedError;
  NearbyDoctorsResult? get data => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of FetchedNearbyDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchedNearbyDoctorsStateCopyWith<FetchedNearbyDoctorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchedNearbyDoctorsStateCopyWith<$Res> {
  factory $FetchedNearbyDoctorsStateCopyWith(FetchedNearbyDoctorsState value,
          $Res Function(FetchedNearbyDoctorsState) then) =
      _$FetchedNearbyDoctorsStateCopyWithImpl<$Res, FetchedNearbyDoctorsState>;
  @useResult
  $Res call({bool isFetching, NearbyDoctorsResult? data, String? errorMessage});

  $NearbyDoctorsResultCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchedNearbyDoctorsStateCopyWithImpl<$Res,
        $Val extends FetchedNearbyDoctorsState>
    implements $FetchedNearbyDoctorsStateCopyWith<$Res> {
  _$FetchedNearbyDoctorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchedNearbyDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFetching = null,
    Object? data = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NearbyDoctorsResult?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FetchedNearbyDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NearbyDoctorsResultCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NearbyDoctorsResultCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchedNearbyDoctorsStateImplCopyWith<$Res>
    implements $FetchedNearbyDoctorsStateCopyWith<$Res> {
  factory _$$FetchedNearbyDoctorsStateImplCopyWith(
          _$FetchedNearbyDoctorsStateImpl value,
          $Res Function(_$FetchedNearbyDoctorsStateImpl) then) =
      __$$FetchedNearbyDoctorsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFetching, NearbyDoctorsResult? data, String? errorMessage});

  @override
  $NearbyDoctorsResultCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchedNearbyDoctorsStateImplCopyWithImpl<$Res>
    extends _$FetchedNearbyDoctorsStateCopyWithImpl<$Res,
        _$FetchedNearbyDoctorsStateImpl>
    implements _$$FetchedNearbyDoctorsStateImplCopyWith<$Res> {
  __$$FetchedNearbyDoctorsStateImplCopyWithImpl(
      _$FetchedNearbyDoctorsStateImpl _value,
      $Res Function(_$FetchedNearbyDoctorsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchedNearbyDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFetching = null,
    Object? data = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$FetchedNearbyDoctorsStateImpl(
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NearbyDoctorsResult?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchedNearbyDoctorsStateImpl implements _FetchedNearbyDoctorsState {
  const _$FetchedNearbyDoctorsStateImpl(
      {this.isFetching = false, this.data, this.errorMessage});

  @override
  @JsonKey()
  final bool isFetching;
  @override
  final NearbyDoctorsResult? data;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FetchedNearbyDoctorsState(isFetching: $isFetching, data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedNearbyDoctorsStateImpl &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFetching, data, errorMessage);

  /// Create a copy of FetchedNearbyDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedNearbyDoctorsStateImplCopyWith<_$FetchedNearbyDoctorsStateImpl>
      get copyWith => __$$FetchedNearbyDoctorsStateImplCopyWithImpl<
          _$FetchedNearbyDoctorsStateImpl>(this, _$identity);
}

abstract class _FetchedNearbyDoctorsState implements FetchedNearbyDoctorsState {
  const factory _FetchedNearbyDoctorsState(
      {final bool isFetching,
      final NearbyDoctorsResult? data,
      final String? errorMessage}) = _$FetchedNearbyDoctorsStateImpl;

  @override
  bool get isFetching;
  @override
  NearbyDoctorsResult? get data;
  @override
  String? get errorMessage;

  /// Create a copy of FetchedNearbyDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedNearbyDoctorsStateImplCopyWith<_$FetchedNearbyDoctorsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorMapFiltersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNearbyDoctors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNearbyDoctors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNearbyDoctors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoctorMapFiltersState value) fetchNearbyDoctors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoctorMapFiltersState value)? fetchNearbyDoctors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoctorMapFiltersState value)? fetchNearbyDoctors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorMapFiltersStateCopyWith<$Res> {
  factory $DoctorMapFiltersStateCopyWith(DoctorMapFiltersState value,
          $Res Function(DoctorMapFiltersState) then) =
      _$DoctorMapFiltersStateCopyWithImpl<$Res, DoctorMapFiltersState>;
}

/// @nodoc
class _$DoctorMapFiltersStateCopyWithImpl<$Res,
        $Val extends DoctorMapFiltersState>
    implements $DoctorMapFiltersStateCopyWith<$Res> {
  _$DoctorMapFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorMapFiltersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DoctorMapFiltersStateImplCopyWith<$Res> {
  factory _$$DoctorMapFiltersStateImplCopyWith(
          _$DoctorMapFiltersStateImpl value,
          $Res Function(_$DoctorMapFiltersStateImpl) then) =
      __$$DoctorMapFiltersStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoctorMapFiltersStateImplCopyWithImpl<$Res>
    extends _$DoctorMapFiltersStateCopyWithImpl<$Res,
        _$DoctorMapFiltersStateImpl>
    implements _$$DoctorMapFiltersStateImplCopyWith<$Res> {
  __$$DoctorMapFiltersStateImplCopyWithImpl(_$DoctorMapFiltersStateImpl _value,
      $Res Function(_$DoctorMapFiltersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorMapFiltersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DoctorMapFiltersStateImpl implements _DoctorMapFiltersState {
  const _$DoctorMapFiltersStateImpl();

  @override
  String toString() {
    return 'DoctorMapFiltersState.fetchNearbyDoctors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorMapFiltersStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNearbyDoctors,
  }) {
    return fetchNearbyDoctors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNearbyDoctors,
  }) {
    return fetchNearbyDoctors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNearbyDoctors,
    required TResult orElse(),
  }) {
    if (fetchNearbyDoctors != null) {
      return fetchNearbyDoctors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoctorMapFiltersState value) fetchNearbyDoctors,
  }) {
    return fetchNearbyDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DoctorMapFiltersState value)? fetchNearbyDoctors,
  }) {
    return fetchNearbyDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoctorMapFiltersState value)? fetchNearbyDoctors,
    required TResult orElse(),
  }) {
    if (fetchNearbyDoctors != null) {
      return fetchNearbyDoctors(this);
    }
    return orElse();
  }
}

abstract class _DoctorMapFiltersState implements DoctorMapFiltersState {
  const factory _DoctorMapFiltersState() = _$DoctorMapFiltersStateImpl;
}
