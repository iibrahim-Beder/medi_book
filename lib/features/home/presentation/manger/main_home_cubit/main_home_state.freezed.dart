// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainHomeState {
  SpecialtiesState get specialtiesState => throw _privateConstructorUsedError;
  RecommendedDoctorsState get recommendedDoctorsState =>
      throw _privateConstructorUsedError;

  /// Create a copy of MainHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainHomeStateCopyWith<MainHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainHomeStateCopyWith<$Res> {
  factory $MainHomeStateCopyWith(
          MainHomeState value, $Res Function(MainHomeState) then) =
      _$MainHomeStateCopyWithImpl<$Res, MainHomeState>;
  @useResult
  $Res call(
      {SpecialtiesState specialtiesState,
      RecommendedDoctorsState recommendedDoctorsState});

  $SpecialtiesStateCopyWith<$Res> get specialtiesState;
  $RecommendedDoctorsStateCopyWith<$Res> get recommendedDoctorsState;
}

/// @nodoc
class _$MainHomeStateCopyWithImpl<$Res, $Val extends MainHomeState>
    implements $MainHomeStateCopyWith<$Res> {
  _$MainHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialtiesState = null,
    Object? recommendedDoctorsState = null,
  }) {
    return _then(_value.copyWith(
      specialtiesState: null == specialtiesState
          ? _value.specialtiesState
          : specialtiesState // ignore: cast_nullable_to_non_nullable
              as SpecialtiesState,
      recommendedDoctorsState: null == recommendedDoctorsState
          ? _value.recommendedDoctorsState
          : recommendedDoctorsState // ignore: cast_nullable_to_non_nullable
              as RecommendedDoctorsState,
    ) as $Val);
  }

  /// Create a copy of MainHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecialtiesStateCopyWith<$Res> get specialtiesState {
    return $SpecialtiesStateCopyWith<$Res>(_value.specialtiesState, (value) {
      return _then(_value.copyWith(specialtiesState: value) as $Val);
    });
  }

  /// Create a copy of MainHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecommendedDoctorsStateCopyWith<$Res> get recommendedDoctorsState {
    return $RecommendedDoctorsStateCopyWith<$Res>(
        _value.recommendedDoctorsState, (value) {
      return _then(_value.copyWith(recommendedDoctorsState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainHomeStateImplCopyWith<$Res>
    implements $MainHomeStateCopyWith<$Res> {
  factory _$$MainHomeStateImplCopyWith(
          _$MainHomeStateImpl value, $Res Function(_$MainHomeStateImpl) then) =
      __$$MainHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SpecialtiesState specialtiesState,
      RecommendedDoctorsState recommendedDoctorsState});

  @override
  $SpecialtiesStateCopyWith<$Res> get specialtiesState;
  @override
  $RecommendedDoctorsStateCopyWith<$Res> get recommendedDoctorsState;
}

/// @nodoc
class __$$MainHomeStateImplCopyWithImpl<$Res>
    extends _$MainHomeStateCopyWithImpl<$Res, _$MainHomeStateImpl>
    implements _$$MainHomeStateImplCopyWith<$Res> {
  __$$MainHomeStateImplCopyWithImpl(
      _$MainHomeStateImpl _value, $Res Function(_$MainHomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialtiesState = null,
    Object? recommendedDoctorsState = null,
  }) {
    return _then(_$MainHomeStateImpl(
      specialtiesState: null == specialtiesState
          ? _value.specialtiesState
          : specialtiesState // ignore: cast_nullable_to_non_nullable
              as SpecialtiesState,
      recommendedDoctorsState: null == recommendedDoctorsState
          ? _value.recommendedDoctorsState
          : recommendedDoctorsState // ignore: cast_nullable_to_non_nullable
              as RecommendedDoctorsState,
    ));
  }
}

/// @nodoc

class _$MainHomeStateImpl implements _MainHomeState {
  const _$MainHomeStateImpl(
      {required this.specialtiesState, required this.recommendedDoctorsState});

  @override
  final SpecialtiesState specialtiesState;
  @override
  final RecommendedDoctorsState recommendedDoctorsState;

  @override
  String toString() {
    return 'MainHomeState(specialtiesState: $specialtiesState, recommendedDoctorsState: $recommendedDoctorsState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainHomeStateImpl &&
            (identical(other.specialtiesState, specialtiesState) ||
                other.specialtiesState == specialtiesState) &&
            (identical(
                    other.recommendedDoctorsState, recommendedDoctorsState) ||
                other.recommendedDoctorsState == recommendedDoctorsState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, specialtiesState, recommendedDoctorsState);

  /// Create a copy of MainHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainHomeStateImplCopyWith<_$MainHomeStateImpl> get copyWith =>
      __$$MainHomeStateImplCopyWithImpl<_$MainHomeStateImpl>(this, _$identity);
}

abstract class _MainHomeState implements MainHomeState {
  const factory _MainHomeState(
          {required final SpecialtiesState specialtiesState,
          required final RecommendedDoctorsState recommendedDoctorsState}) =
      _$MainHomeStateImpl;

  @override
  SpecialtiesState get specialtiesState;
  @override
  RecommendedDoctorsState get recommendedDoctorsState;

  /// Create a copy of MainHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainHomeStateImplCopyWith<_$MainHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpecialtiesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Speciality> get data => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecialtiesStateCopyWith<SpecialtiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialtiesStateCopyWith<$Res> {
  factory $SpecialtiesStateCopyWith(
          SpecialtiesState value, $Res Function(SpecialtiesState) then) =
      _$SpecialtiesStateCopyWithImpl<$Res, SpecialtiesState>;
  @useResult
  $Res call({bool isLoading, List<Speciality> data, String errorMessage});
}

/// @nodoc
class _$SpecialtiesStateCopyWithImpl<$Res, $Val extends SpecialtiesState>
    implements $SpecialtiesStateCopyWith<$Res> {
  _$SpecialtiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialtiesStateImplCopyWith<$Res>
    implements $SpecialtiesStateCopyWith<$Res> {
  factory _$$SpecialtiesStateImplCopyWith(_$SpecialtiesStateImpl value,
          $Res Function(_$SpecialtiesStateImpl) then) =
      __$$SpecialtiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Speciality> data, String errorMessage});
}

/// @nodoc
class __$$SpecialtiesStateImplCopyWithImpl<$Res>
    extends _$SpecialtiesStateCopyWithImpl<$Res, _$SpecialtiesStateImpl>
    implements _$$SpecialtiesStateImplCopyWith<$Res> {
  __$$SpecialtiesStateImplCopyWithImpl(_$SpecialtiesStateImpl _value,
      $Res Function(_$SpecialtiesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SpecialtiesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpecialtiesStateImpl implements _SpecialtiesState {
  const _$SpecialtiesStateImpl(
      {this.isLoading = false,
      final List<Speciality> data = const [],
      this.errorMessage = ''})
      : _data = data;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Speciality> _data;
  @override
  @JsonKey()
  List<Speciality> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SpecialtiesState(isLoading: $isLoading, data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialtiesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_data), errorMessage);

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialtiesStateImplCopyWith<_$SpecialtiesStateImpl> get copyWith =>
      __$$SpecialtiesStateImplCopyWithImpl<_$SpecialtiesStateImpl>(
          this, _$identity);
}

abstract class _SpecialtiesState implements SpecialtiesState {
  const factory _SpecialtiesState(
      {final bool isLoading,
      final List<Speciality> data,
      final String errorMessage}) = _$SpecialtiesStateImpl;

  @override
  bool get isLoading;
  @override
  List<Speciality> get data;
  @override
  String get errorMessage;

  /// Create a copy of SpecialtiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialtiesStateImplCopyWith<_$SpecialtiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecommendedDoctorsState {
  PaginatedState<Doctor>? get paginatedState =>
      throw _privateConstructorUsedError;
  DoctorsFilterDto? get doctorsFilterDto => throw _privateConstructorUsedError;
  ScrollController? get scrollCtrl => throw _privateConstructorUsedError;

  /// Create a copy of RecommendedDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendedDoctorsStateCopyWith<RecommendedDoctorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedDoctorsStateCopyWith<$Res> {
  factory $RecommendedDoctorsStateCopyWith(RecommendedDoctorsState value,
          $Res Function(RecommendedDoctorsState) then) =
      _$RecommendedDoctorsStateCopyWithImpl<$Res, RecommendedDoctorsState>;
  @useResult
  $Res call(
      {PaginatedState<Doctor>? paginatedState,
      DoctorsFilterDto? doctorsFilterDto,
      ScrollController? scrollCtrl});

  $PaginatedStateCopyWith<Doctor, $Res>? get paginatedState;
  $DoctorsFilterDtoCopyWith<$Res>? get doctorsFilterDto;
}

/// @nodoc
class _$RecommendedDoctorsStateCopyWithImpl<$Res,
        $Val extends RecommendedDoctorsState>
    implements $RecommendedDoctorsStateCopyWith<$Res> {
  _$RecommendedDoctorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginatedState = freezed,
    Object? doctorsFilterDto = freezed,
    Object? scrollCtrl = freezed,
  }) {
    return _then(_value.copyWith(
      paginatedState: freezed == paginatedState
          ? _value.paginatedState
          : paginatedState // ignore: cast_nullable_to_non_nullable
              as PaginatedState<Doctor>?,
      doctorsFilterDto: freezed == doctorsFilterDto
          ? _value.doctorsFilterDto
          : doctorsFilterDto // ignore: cast_nullable_to_non_nullable
              as DoctorsFilterDto?,
      scrollCtrl: freezed == scrollCtrl
          ? _value.scrollCtrl
          : scrollCtrl // ignore: cast_nullable_to_non_nullable
              as ScrollController?,
    ) as $Val);
  }

  /// Create a copy of RecommendedDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedStateCopyWith<Doctor, $Res>? get paginatedState {
    if (_value.paginatedState == null) {
      return null;
    }

    return $PaginatedStateCopyWith<Doctor, $Res>(_value.paginatedState!,
        (value) {
      return _then(_value.copyWith(paginatedState: value) as $Val);
    });
  }

  /// Create a copy of RecommendedDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorsFilterDtoCopyWith<$Res>? get doctorsFilterDto {
    if (_value.doctorsFilterDto == null) {
      return null;
    }

    return $DoctorsFilterDtoCopyWith<$Res>(_value.doctorsFilterDto!, (value) {
      return _then(_value.copyWith(doctorsFilterDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecommendedDoctorsStateImplCopyWith<$Res>
    implements $RecommendedDoctorsStateCopyWith<$Res> {
  factory _$$RecommendedDoctorsStateImplCopyWith(
          _$RecommendedDoctorsStateImpl value,
          $Res Function(_$RecommendedDoctorsStateImpl) then) =
      __$$RecommendedDoctorsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginatedState<Doctor>? paginatedState,
      DoctorsFilterDto? doctorsFilterDto,
      ScrollController? scrollCtrl});

  @override
  $PaginatedStateCopyWith<Doctor, $Res>? get paginatedState;
  @override
  $DoctorsFilterDtoCopyWith<$Res>? get doctorsFilterDto;
}

/// @nodoc
class __$$RecommendedDoctorsStateImplCopyWithImpl<$Res>
    extends _$RecommendedDoctorsStateCopyWithImpl<$Res,
        _$RecommendedDoctorsStateImpl>
    implements _$$RecommendedDoctorsStateImplCopyWith<$Res> {
  __$$RecommendedDoctorsStateImplCopyWithImpl(
      _$RecommendedDoctorsStateImpl _value,
      $Res Function(_$RecommendedDoctorsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paginatedState = freezed,
    Object? doctorsFilterDto = freezed,
    Object? scrollCtrl = freezed,
  }) {
    return _then(_$RecommendedDoctorsStateImpl(
      paginatedState: freezed == paginatedState
          ? _value.paginatedState
          : paginatedState // ignore: cast_nullable_to_non_nullable
              as PaginatedState<Doctor>?,
      doctorsFilterDto: freezed == doctorsFilterDto
          ? _value.doctorsFilterDto
          : doctorsFilterDto // ignore: cast_nullable_to_non_nullable
              as DoctorsFilterDto?,
      scrollCtrl: freezed == scrollCtrl
          ? _value.scrollCtrl
          : scrollCtrl // ignore: cast_nullable_to_non_nullable
              as ScrollController?,
    ));
  }
}

/// @nodoc

class _$RecommendedDoctorsStateImpl implements _RecommendedDoctorsState {
  const _$RecommendedDoctorsStateImpl(
      {this.paginatedState, this.doctorsFilterDto, this.scrollCtrl});

  @override
  final PaginatedState<Doctor>? paginatedState;
  @override
  final DoctorsFilterDto? doctorsFilterDto;
  @override
  final ScrollController? scrollCtrl;

  @override
  String toString() {
    return 'RecommendedDoctorsState(paginatedState: $paginatedState, doctorsFilterDto: $doctorsFilterDto, scrollCtrl: $scrollCtrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedDoctorsStateImpl &&
            (identical(other.paginatedState, paginatedState) ||
                other.paginatedState == paginatedState) &&
            (identical(other.doctorsFilterDto, doctorsFilterDto) ||
                other.doctorsFilterDto == doctorsFilterDto) &&
            (identical(other.scrollCtrl, scrollCtrl) ||
                other.scrollCtrl == scrollCtrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, paginatedState, doctorsFilterDto, scrollCtrl);

  /// Create a copy of RecommendedDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedDoctorsStateImplCopyWith<_$RecommendedDoctorsStateImpl>
      get copyWith => __$$RecommendedDoctorsStateImplCopyWithImpl<
          _$RecommendedDoctorsStateImpl>(this, _$identity);
}

abstract class _RecommendedDoctorsState implements RecommendedDoctorsState {
  const factory _RecommendedDoctorsState(
      {final PaginatedState<Doctor>? paginatedState,
      final DoctorsFilterDto? doctorsFilterDto,
      final ScrollController? scrollCtrl}) = _$RecommendedDoctorsStateImpl;

  @override
  PaginatedState<Doctor>? get paginatedState;
  @override
  DoctorsFilterDto? get doctorsFilterDto;
  @override
  ScrollController? get scrollCtrl;

  /// Create a copy of RecommendedDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedDoctorsStateImplCopyWith<_$RecommendedDoctorsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
