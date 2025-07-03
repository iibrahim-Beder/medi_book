// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_doctor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsDoctorState {
  EnDoctorSection get selectedSection => throw _privateConstructorUsedError;
  int get reviewsLastindex => throw _privateConstructorUsedError;
  double get reviewsAlignment => throw _privateConstructorUsedError;
  PaginatedState<DoctorReview> get paginatedState =>
      throw _privateConstructorUsedError;
  DoctorProfileState get doctorProfileState =>
      throw _privateConstructorUsedError;
  DoctorLocationsState get doctorLocationsState =>
      throw _privateConstructorUsedError;
  Doctor? get doctor => throw _privateConstructorUsedError;

  /// Create a copy of DetailsDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsDoctorStateCopyWith<DetailsDoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsDoctorStateCopyWith<$Res> {
  factory $DetailsDoctorStateCopyWith(
          DetailsDoctorState value, $Res Function(DetailsDoctorState) then) =
      _$DetailsDoctorStateCopyWithImpl<$Res, DetailsDoctorState>;
  @useResult
  $Res call(
      {EnDoctorSection selectedSection,
      int reviewsLastindex,
      double reviewsAlignment,
      PaginatedState<DoctorReview> paginatedState,
      DoctorProfileState doctorProfileState,
      DoctorLocationsState doctorLocationsState,
      Doctor? doctor});

  $PaginatedStateCopyWith<DoctorReview, $Res> get paginatedState;
  $DoctorProfileStateCopyWith<$Res> get doctorProfileState;
  $DoctorLocationsStateCopyWith<$Res> get doctorLocationsState;
}

/// @nodoc
class _$DetailsDoctorStateCopyWithImpl<$Res, $Val extends DetailsDoctorState>
    implements $DetailsDoctorStateCopyWith<$Res> {
  _$DetailsDoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSection = null,
    Object? reviewsLastindex = null,
    Object? reviewsAlignment = null,
    Object? paginatedState = null,
    Object? doctorProfileState = null,
    Object? doctorLocationsState = null,
    Object? doctor = freezed,
  }) {
    return _then(_value.copyWith(
      selectedSection: null == selectedSection
          ? _value.selectedSection
          : selectedSection // ignore: cast_nullable_to_non_nullable
              as EnDoctorSection,
      reviewsLastindex: null == reviewsLastindex
          ? _value.reviewsLastindex
          : reviewsLastindex // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsAlignment: null == reviewsAlignment
          ? _value.reviewsAlignment
          : reviewsAlignment // ignore: cast_nullable_to_non_nullable
              as double,
      paginatedState: null == paginatedState
          ? _value.paginatedState
          : paginatedState // ignore: cast_nullable_to_non_nullable
              as PaginatedState<DoctorReview>,
      doctorProfileState: null == doctorProfileState
          ? _value.doctorProfileState
          : doctorProfileState // ignore: cast_nullable_to_non_nullable
              as DoctorProfileState,
      doctorLocationsState: null == doctorLocationsState
          ? _value.doctorLocationsState
          : doctorLocationsState // ignore: cast_nullable_to_non_nullable
              as DoctorLocationsState,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
    ) as $Val);
  }

  /// Create a copy of DetailsDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedStateCopyWith<DoctorReview, $Res> get paginatedState {
    return $PaginatedStateCopyWith<DoctorReview, $Res>(_value.paginatedState,
        (value) {
      return _then(_value.copyWith(paginatedState: value) as $Val);
    });
  }

  /// Create a copy of DetailsDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorProfileStateCopyWith<$Res> get doctorProfileState {
    return $DoctorProfileStateCopyWith<$Res>(_value.doctorProfileState,
        (value) {
      return _then(_value.copyWith(doctorProfileState: value) as $Val);
    });
  }

  /// Create a copy of DetailsDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorLocationsStateCopyWith<$Res> get doctorLocationsState {
    return $DoctorLocationsStateCopyWith<$Res>(_value.doctorLocationsState,
        (value) {
      return _then(_value.copyWith(doctorLocationsState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailsDoctorStateImplCopyWith<$Res>
    implements $DetailsDoctorStateCopyWith<$Res> {
  factory _$$DetailsDoctorStateImplCopyWith(_$DetailsDoctorStateImpl value,
          $Res Function(_$DetailsDoctorStateImpl) then) =
      __$$DetailsDoctorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnDoctorSection selectedSection,
      int reviewsLastindex,
      double reviewsAlignment,
      PaginatedState<DoctorReview> paginatedState,
      DoctorProfileState doctorProfileState,
      DoctorLocationsState doctorLocationsState,
      Doctor? doctor});

  @override
  $PaginatedStateCopyWith<DoctorReview, $Res> get paginatedState;
  @override
  $DoctorProfileStateCopyWith<$Res> get doctorProfileState;
  @override
  $DoctorLocationsStateCopyWith<$Res> get doctorLocationsState;
}

/// @nodoc
class __$$DetailsDoctorStateImplCopyWithImpl<$Res>
    extends _$DetailsDoctorStateCopyWithImpl<$Res, _$DetailsDoctorStateImpl>
    implements _$$DetailsDoctorStateImplCopyWith<$Res> {
  __$$DetailsDoctorStateImplCopyWithImpl(_$DetailsDoctorStateImpl _value,
      $Res Function(_$DetailsDoctorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSection = null,
    Object? reviewsLastindex = null,
    Object? reviewsAlignment = null,
    Object? paginatedState = null,
    Object? doctorProfileState = null,
    Object? doctorLocationsState = null,
    Object? doctor = freezed,
  }) {
    return _then(_$DetailsDoctorStateImpl(
      selectedSection: null == selectedSection
          ? _value.selectedSection
          : selectedSection // ignore: cast_nullable_to_non_nullable
              as EnDoctorSection,
      reviewsLastindex: null == reviewsLastindex
          ? _value.reviewsLastindex
          : reviewsLastindex // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsAlignment: null == reviewsAlignment
          ? _value.reviewsAlignment
          : reviewsAlignment // ignore: cast_nullable_to_non_nullable
              as double,
      paginatedState: null == paginatedState
          ? _value.paginatedState
          : paginatedState // ignore: cast_nullable_to_non_nullable
              as PaginatedState<DoctorReview>,
      doctorProfileState: null == doctorProfileState
          ? _value.doctorProfileState
          : doctorProfileState // ignore: cast_nullable_to_non_nullable
              as DoctorProfileState,
      doctorLocationsState: null == doctorLocationsState
          ? _value.doctorLocationsState
          : doctorLocationsState // ignore: cast_nullable_to_non_nullable
              as DoctorLocationsState,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
    ));
  }
}

/// @nodoc

class _$DetailsDoctorStateImpl implements _DetailsDoctorState {
  const _$DetailsDoctorStateImpl(
      {required this.selectedSection,
      required this.reviewsLastindex,
      required this.reviewsAlignment,
      required this.paginatedState,
      required this.doctorProfileState,
      required this.doctorLocationsState,
      this.doctor});

  @override
  final EnDoctorSection selectedSection;
  @override
  final int reviewsLastindex;
  @override
  final double reviewsAlignment;
  @override
  final PaginatedState<DoctorReview> paginatedState;
  @override
  final DoctorProfileState doctorProfileState;
  @override
  final DoctorLocationsState doctorLocationsState;
  @override
  final Doctor? doctor;

  @override
  String toString() {
    return 'DetailsDoctorState(selectedSection: $selectedSection, reviewsLastindex: $reviewsLastindex, reviewsAlignment: $reviewsAlignment, paginatedState: $paginatedState, doctorProfileState: $doctorProfileState, doctorLocationsState: $doctorLocationsState, doctor: $doctor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsDoctorStateImpl &&
            (identical(other.selectedSection, selectedSection) ||
                other.selectedSection == selectedSection) &&
            (identical(other.reviewsLastindex, reviewsLastindex) ||
                other.reviewsLastindex == reviewsLastindex) &&
            (identical(other.reviewsAlignment, reviewsAlignment) ||
                other.reviewsAlignment == reviewsAlignment) &&
            (identical(other.paginatedState, paginatedState) ||
                other.paginatedState == paginatedState) &&
            (identical(other.doctorProfileState, doctorProfileState) ||
                other.doctorProfileState == doctorProfileState) &&
            (identical(other.doctorLocationsState, doctorLocationsState) ||
                other.doctorLocationsState == doctorLocationsState) &&
            (identical(other.doctor, doctor) || other.doctor == doctor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedSection,
      reviewsLastindex,
      reviewsAlignment,
      paginatedState,
      doctorProfileState,
      doctorLocationsState,
      doctor);

  /// Create a copy of DetailsDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsDoctorStateImplCopyWith<_$DetailsDoctorStateImpl> get copyWith =>
      __$$DetailsDoctorStateImplCopyWithImpl<_$DetailsDoctorStateImpl>(
          this, _$identity);
}

abstract class _DetailsDoctorState implements DetailsDoctorState {
  const factory _DetailsDoctorState(
      {required final EnDoctorSection selectedSection,
      required final int reviewsLastindex,
      required final double reviewsAlignment,
      required final PaginatedState<DoctorReview> paginatedState,
      required final DoctorProfileState doctorProfileState,
      required final DoctorLocationsState doctorLocationsState,
      final Doctor? doctor}) = _$DetailsDoctorStateImpl;

  @override
  EnDoctorSection get selectedSection;
  @override
  int get reviewsLastindex;
  @override
  double get reviewsAlignment;
  @override
  PaginatedState<DoctorReview> get paginatedState;
  @override
  DoctorProfileState get doctorProfileState;
  @override
  DoctorLocationsState get doctorLocationsState;
  @override
  Doctor? get doctor;

  /// Create a copy of DetailsDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsDoctorStateImplCopyWith<_$DetailsDoctorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorProfileState {
  bool get isLoding => throw _privateConstructorUsedError;
  DoctorProfile? get doctorProfile => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DoctorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorProfileStateCopyWith<DoctorProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorProfileStateCopyWith<$Res> {
  factory $DoctorProfileStateCopyWith(
          DoctorProfileState value, $Res Function(DoctorProfileState) then) =
      _$DoctorProfileStateCopyWithImpl<$Res, DoctorProfileState>;
  @useResult
  $Res call({bool isLoding, DoctorProfile? doctorProfile, String errorMessage});
}

/// @nodoc
class _$DoctorProfileStateCopyWithImpl<$Res, $Val extends DoctorProfileState>
    implements $DoctorProfileStateCopyWith<$Res> {
  _$DoctorProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? doctorProfile = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorProfile: freezed == doctorProfile
          ? _value.doctorProfile
          : doctorProfile // ignore: cast_nullable_to_non_nullable
              as DoctorProfile?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorProfileStateImplCopyWith<$Res>
    implements $DoctorProfileStateCopyWith<$Res> {
  factory _$$DoctorProfileStateImplCopyWith(_$DoctorProfileStateImpl value,
          $Res Function(_$DoctorProfileStateImpl) then) =
      __$$DoctorProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoding, DoctorProfile? doctorProfile, String errorMessage});
}

/// @nodoc
class __$$DoctorProfileStateImplCopyWithImpl<$Res>
    extends _$DoctorProfileStateCopyWithImpl<$Res, _$DoctorProfileStateImpl>
    implements _$$DoctorProfileStateImplCopyWith<$Res> {
  __$$DoctorProfileStateImplCopyWithImpl(_$DoctorProfileStateImpl _value,
      $Res Function(_$DoctorProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? doctorProfile = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$DoctorProfileStateImpl(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorProfile: freezed == doctorProfile
          ? _value.doctorProfile
          : doctorProfile // ignore: cast_nullable_to_non_nullable
              as DoctorProfile?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoctorProfileStateImpl implements _DoctorProfileState {
  const _$DoctorProfileStateImpl(
      {this.isLoding = false, this.doctorProfile, this.errorMessage = ''});

  @override
  @JsonKey()
  final bool isLoding;
  @override
  final DoctorProfile? doctorProfile;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'DoctorProfileState(isLoding: $isLoding, doctorProfile: $doctorProfile, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorProfileStateImpl &&
            (identical(other.isLoding, isLoding) ||
                other.isLoding == isLoding) &&
            (identical(other.doctorProfile, doctorProfile) ||
                other.doctorProfile == doctorProfile) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoding, doctorProfile, errorMessage);

  /// Create a copy of DoctorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorProfileStateImplCopyWith<_$DoctorProfileStateImpl> get copyWith =>
      __$$DoctorProfileStateImplCopyWithImpl<_$DoctorProfileStateImpl>(
          this, _$identity);
}

abstract class _DoctorProfileState implements DoctorProfileState {
  const factory _DoctorProfileState(
      {final bool isLoding,
      final DoctorProfile? doctorProfile,
      final String errorMessage}) = _$DoctorProfileStateImpl;

  @override
  bool get isLoding;
  @override
  DoctorProfile? get doctorProfile;
  @override
  String get errorMessage;

  /// Create a copy of DoctorProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorProfileStateImplCopyWith<_$DoctorProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorLocationsState {
  bool get isLoding => throw _privateConstructorUsedError;
  List<DoctorLocation>? get doctorLocations =>
      throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DoctorLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorLocationsStateCopyWith<DoctorLocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorLocationsStateCopyWith<$Res> {
  factory $DoctorLocationsStateCopyWith(DoctorLocationsState value,
          $Res Function(DoctorLocationsState) then) =
      _$DoctorLocationsStateCopyWithImpl<$Res, DoctorLocationsState>;
  @useResult
  $Res call(
      {bool isLoding,
      List<DoctorLocation>? doctorLocations,
      String errorMessage});
}

/// @nodoc
class _$DoctorLocationsStateCopyWithImpl<$Res,
        $Val extends DoctorLocationsState>
    implements $DoctorLocationsStateCopyWith<$Res> {
  _$DoctorLocationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? doctorLocations = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorLocations: freezed == doctorLocations
          ? _value.doctorLocations
          : doctorLocations // ignore: cast_nullable_to_non_nullable
              as List<DoctorLocation>?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorLocationsStateImplCopyWith<$Res>
    implements $DoctorLocationsStateCopyWith<$Res> {
  factory _$$DoctorLocationsStateImplCopyWith(_$DoctorLocationsStateImpl value,
          $Res Function(_$DoctorLocationsStateImpl) then) =
      __$$DoctorLocationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoding,
      List<DoctorLocation>? doctorLocations,
      String errorMessage});
}

/// @nodoc
class __$$DoctorLocationsStateImplCopyWithImpl<$Res>
    extends _$DoctorLocationsStateCopyWithImpl<$Res, _$DoctorLocationsStateImpl>
    implements _$$DoctorLocationsStateImplCopyWith<$Res> {
  __$$DoctorLocationsStateImplCopyWithImpl(_$DoctorLocationsStateImpl _value,
      $Res Function(_$DoctorLocationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoding = null,
    Object? doctorLocations = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$DoctorLocationsStateImpl(
      isLoding: null == isLoding
          ? _value.isLoding
          : isLoding // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorLocations: freezed == doctorLocations
          ? _value._doctorLocations
          : doctorLocations // ignore: cast_nullable_to_non_nullable
              as List<DoctorLocation>?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoctorLocationsStateImpl implements _DoctorLocationsState {
  const _$DoctorLocationsStateImpl(
      {this.isLoding = false,
      final List<DoctorLocation>? doctorLocations,
      this.errorMessage = ''})
      : _doctorLocations = doctorLocations;

  @override
  @JsonKey()
  final bool isLoding;
  final List<DoctorLocation>? _doctorLocations;
  @override
  List<DoctorLocation>? get doctorLocations {
    final value = _doctorLocations;
    if (value == null) return null;
    if (_doctorLocations is EqualUnmodifiableListView) return _doctorLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'DoctorLocationsState(isLoding: $isLoding, doctorLocations: $doctorLocations, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorLocationsStateImpl &&
            (identical(other.isLoding, isLoding) ||
                other.isLoding == isLoding) &&
            const DeepCollectionEquality()
                .equals(other._doctorLocations, _doctorLocations) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoding,
      const DeepCollectionEquality().hash(_doctorLocations), errorMessage);

  /// Create a copy of DoctorLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorLocationsStateImplCopyWith<_$DoctorLocationsStateImpl>
      get copyWith =>
          __$$DoctorLocationsStateImplCopyWithImpl<_$DoctorLocationsStateImpl>(
              this, _$identity);
}

abstract class _DoctorLocationsState implements DoctorLocationsState {
  const factory _DoctorLocationsState(
      {final bool isLoding,
      final List<DoctorLocation>? doctorLocations,
      final String errorMessage}) = _$DoctorLocationsStateImpl;

  @override
  bool get isLoding;
  @override
  List<DoctorLocation>? get doctorLocations;
  @override
  String get errorMessage;

  /// Create a copy of DoctorLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorLocationsStateImplCopyWith<_$DoctorLocationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
