// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nearby_doctors_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NearbyDoctorsResult {
  List<LocationWithDoctors> get groupedByLocation =>
      throw _privateConstructorUsedError;
  List<Doctor>? get generalDoctorsList => throw _privateConstructorUsedError;
  List<Doctor>? get selectedLocationDoctors =>
      throw _privateConstructorUsedError;

  /// Create a copy of NearbyDoctorsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NearbyDoctorsResultCopyWith<NearbyDoctorsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyDoctorsResultCopyWith<$Res> {
  factory $NearbyDoctorsResultCopyWith(
          NearbyDoctorsResult value, $Res Function(NearbyDoctorsResult) then) =
      _$NearbyDoctorsResultCopyWithImpl<$Res, NearbyDoctorsResult>;
  @useResult
  $Res call(
      {List<LocationWithDoctors> groupedByLocation,
      List<Doctor>? generalDoctorsList,
      List<Doctor>? selectedLocationDoctors});
}

/// @nodoc
class _$NearbyDoctorsResultCopyWithImpl<$Res, $Val extends NearbyDoctorsResult>
    implements $NearbyDoctorsResultCopyWith<$Res> {
  _$NearbyDoctorsResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NearbyDoctorsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupedByLocation = null,
    Object? generalDoctorsList = freezed,
    Object? selectedLocationDoctors = freezed,
  }) {
    return _then(_value.copyWith(
      groupedByLocation: null == groupedByLocation
          ? _value.groupedByLocation
          : groupedByLocation // ignore: cast_nullable_to_non_nullable
              as List<LocationWithDoctors>,
      generalDoctorsList: freezed == generalDoctorsList
          ? _value.generalDoctorsList
          : generalDoctorsList // ignore: cast_nullable_to_non_nullable
              as List<Doctor>?,
      selectedLocationDoctors: freezed == selectedLocationDoctors
          ? _value.selectedLocationDoctors
          : selectedLocationDoctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NearbyDoctorsResultImplCopyWith<$Res>
    implements $NearbyDoctorsResultCopyWith<$Res> {
  factory _$$NearbyDoctorsResultImplCopyWith(_$NearbyDoctorsResultImpl value,
          $Res Function(_$NearbyDoctorsResultImpl) then) =
      __$$NearbyDoctorsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LocationWithDoctors> groupedByLocation,
      List<Doctor>? generalDoctorsList,
      List<Doctor>? selectedLocationDoctors});
}

/// @nodoc
class __$$NearbyDoctorsResultImplCopyWithImpl<$Res>
    extends _$NearbyDoctorsResultCopyWithImpl<$Res, _$NearbyDoctorsResultImpl>
    implements _$$NearbyDoctorsResultImplCopyWith<$Res> {
  __$$NearbyDoctorsResultImplCopyWithImpl(_$NearbyDoctorsResultImpl _value,
      $Res Function(_$NearbyDoctorsResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of NearbyDoctorsResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupedByLocation = null,
    Object? generalDoctorsList = freezed,
    Object? selectedLocationDoctors = freezed,
  }) {
    return _then(_$NearbyDoctorsResultImpl(
      groupedByLocation: null == groupedByLocation
          ? _value._groupedByLocation
          : groupedByLocation // ignore: cast_nullable_to_non_nullable
              as List<LocationWithDoctors>,
      generalDoctorsList: freezed == generalDoctorsList
          ? _value._generalDoctorsList
          : generalDoctorsList // ignore: cast_nullable_to_non_nullable
              as List<Doctor>?,
      selectedLocationDoctors: freezed == selectedLocationDoctors
          ? _value._selectedLocationDoctors
          : selectedLocationDoctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>?,
    ));
  }
}

/// @nodoc

class _$NearbyDoctorsResultImpl implements _NearbyDoctorsResult {
  const _$NearbyDoctorsResultImpl(
      {required final List<LocationWithDoctors> groupedByLocation,
      final List<Doctor>? generalDoctorsList,
      final List<Doctor>? selectedLocationDoctors})
      : _groupedByLocation = groupedByLocation,
        _generalDoctorsList = generalDoctorsList,
        _selectedLocationDoctors = selectedLocationDoctors;

  final List<LocationWithDoctors> _groupedByLocation;
  @override
  List<LocationWithDoctors> get groupedByLocation {
    if (_groupedByLocation is EqualUnmodifiableListView)
      return _groupedByLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedByLocation);
  }

  final List<Doctor>? _generalDoctorsList;
  @override
  List<Doctor>? get generalDoctorsList {
    final value = _generalDoctorsList;
    if (value == null) return null;
    if (_generalDoctorsList is EqualUnmodifiableListView)
      return _generalDoctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Doctor>? _selectedLocationDoctors;
  @override
  List<Doctor>? get selectedLocationDoctors {
    final value = _selectedLocationDoctors;
    if (value == null) return null;
    if (_selectedLocationDoctors is EqualUnmodifiableListView)
      return _selectedLocationDoctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NearbyDoctorsResult(groupedByLocation: $groupedByLocation, generalDoctorsList: $generalDoctorsList, selectedLocationDoctors: $selectedLocationDoctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NearbyDoctorsResultImpl &&
            const DeepCollectionEquality()
                .equals(other._groupedByLocation, _groupedByLocation) &&
            const DeepCollectionEquality()
                .equals(other._generalDoctorsList, _generalDoctorsList) &&
            const DeepCollectionEquality().equals(
                other._selectedLocationDoctors, _selectedLocationDoctors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_groupedByLocation),
      const DeepCollectionEquality().hash(_generalDoctorsList),
      const DeepCollectionEquality().hash(_selectedLocationDoctors));

  /// Create a copy of NearbyDoctorsResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NearbyDoctorsResultImplCopyWith<_$NearbyDoctorsResultImpl> get copyWith =>
      __$$NearbyDoctorsResultImplCopyWithImpl<_$NearbyDoctorsResultImpl>(
          this, _$identity);
}

abstract class _NearbyDoctorsResult implements NearbyDoctorsResult {
  const factory _NearbyDoctorsResult(
      {required final List<LocationWithDoctors> groupedByLocation,
      final List<Doctor>? generalDoctorsList,
      final List<Doctor>? selectedLocationDoctors}) = _$NearbyDoctorsResultImpl;

  @override
  List<LocationWithDoctors> get groupedByLocation;
  @override
  List<Doctor>? get generalDoctorsList;
  @override
  List<Doctor>? get selectedLocationDoctors;

  /// Create a copy of NearbyDoctorsResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NearbyDoctorsResultImplCopyWith<_$NearbyDoctorsResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
