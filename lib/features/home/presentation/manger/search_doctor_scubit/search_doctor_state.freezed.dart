// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_doctor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchDoctorState {
  DoctorsListState get doctorsListState => throw _privateConstructorUsedError;
  SortState get sortState => throw _privateConstructorUsedError;

  /// Create a copy of SearchDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchDoctorStateCopyWith<SearchDoctorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDoctorStateCopyWith<$Res> {
  factory $SearchDoctorStateCopyWith(
          SearchDoctorState value, $Res Function(SearchDoctorState) then) =
      _$SearchDoctorStateCopyWithImpl<$Res, SearchDoctorState>;
  @useResult
  $Res call({DoctorsListState doctorsListState, SortState sortState});

  $DoctorsListStateCopyWith<$Res> get doctorsListState;
  $SortStateCopyWith<$Res> get sortState;
}

/// @nodoc
class _$SearchDoctorStateCopyWithImpl<$Res, $Val extends SearchDoctorState>
    implements $SearchDoctorStateCopyWith<$Res> {
  _$SearchDoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorsListState = null,
    Object? sortState = null,
  }) {
    return _then(_value.copyWith(
      doctorsListState: null == doctorsListState
          ? _value.doctorsListState
          : doctorsListState // ignore: cast_nullable_to_non_nullable
              as DoctorsListState,
      sortState: null == sortState
          ? _value.sortState
          : sortState // ignore: cast_nullable_to_non_nullable
              as SortState,
    ) as $Val);
  }

  /// Create a copy of SearchDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorsListStateCopyWith<$Res> get doctorsListState {
    return $DoctorsListStateCopyWith<$Res>(_value.doctorsListState, (value) {
      return _then(_value.copyWith(doctorsListState: value) as $Val);
    });
  }

  /// Create a copy of SearchDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortStateCopyWith<$Res> get sortState {
    return $SortStateCopyWith<$Res>(_value.sortState, (value) {
      return _then(_value.copyWith(sortState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchDoctorStateImplCopyWith<$Res>
    implements $SearchDoctorStateCopyWith<$Res> {
  factory _$$SearchDoctorStateImplCopyWith(_$SearchDoctorStateImpl value,
          $Res Function(_$SearchDoctorStateImpl) then) =
      __$$SearchDoctorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DoctorsListState doctorsListState, SortState sortState});

  @override
  $DoctorsListStateCopyWith<$Res> get doctorsListState;
  @override
  $SortStateCopyWith<$Res> get sortState;
}

/// @nodoc
class __$$SearchDoctorStateImplCopyWithImpl<$Res>
    extends _$SearchDoctorStateCopyWithImpl<$Res, _$SearchDoctorStateImpl>
    implements _$$SearchDoctorStateImplCopyWith<$Res> {
  __$$SearchDoctorStateImplCopyWithImpl(_$SearchDoctorStateImpl _value,
      $Res Function(_$SearchDoctorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorsListState = null,
    Object? sortState = null,
  }) {
    return _then(_$SearchDoctorStateImpl(
      doctorsListState: null == doctorsListState
          ? _value.doctorsListState
          : doctorsListState // ignore: cast_nullable_to_non_nullable
              as DoctorsListState,
      sortState: null == sortState
          ? _value.sortState
          : sortState // ignore: cast_nullable_to_non_nullable
              as SortState,
    ));
  }
}

/// @nodoc

class _$SearchDoctorStateImpl implements _SearchDoctorState {
  const _$SearchDoctorStateImpl(
      {required this.doctorsListState, required this.sortState});

  @override
  final DoctorsListState doctorsListState;
  @override
  final SortState sortState;

  @override
  String toString() {
    return 'SearchDoctorState(doctorsListState: $doctorsListState, sortState: $sortState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDoctorStateImpl &&
            (identical(other.doctorsListState, doctorsListState) ||
                other.doctorsListState == doctorsListState) &&
            (identical(other.sortState, sortState) ||
                other.sortState == sortState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorsListState, sortState);

  /// Create a copy of SearchDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDoctorStateImplCopyWith<_$SearchDoctorStateImpl> get copyWith =>
      __$$SearchDoctorStateImplCopyWithImpl<_$SearchDoctorStateImpl>(
          this, _$identity);
}

abstract class _SearchDoctorState implements SearchDoctorState {
  const factory _SearchDoctorState(
      {required final DoctorsListState doctorsListState,
      required final SortState sortState}) = _$SearchDoctorStateImpl;

  @override
  DoctorsListState get doctorsListState;
  @override
  SortState get sortState;

  /// Create a copy of SearchDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchDoctorStateImplCopyWith<_$SearchDoctorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorsListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get hasMoreData =>
      throw _privateConstructorUsedError; // TextEditingController? searchCtrl,
  DoctorsFilterDto? get doctorsFilterDto => throw _privateConstructorUsedError;
  List<Doctor> get data =>
      throw _privateConstructorUsedError; // @Default([]) List<Doctor> flutterDocsList,
  int get currentPage => throw _privateConstructorUsedError;
  String get errorMessage =>
      throw _privateConstructorUsedError; // ScrollController? scrollCtrl,
  EnModes? get mode => throw _privateConstructorUsedError;
  double get lastOffset => throw _privateConstructorUsedError;

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorsListStateCopyWith<DoctorsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsListStateCopyWith<$Res> {
  factory $DoctorsListStateCopyWith(
          DoctorsListState value, $Res Function(DoctorsListState) then) =
      _$DoctorsListStateCopyWithImpl<$Res, DoctorsListState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      bool hasMoreData,
      DoctorsFilterDto? doctorsFilterDto,
      List<Doctor> data,
      int currentPage,
      String errorMessage,
      EnModes? mode,
      double lastOffset});

  $DoctorsFilterDtoCopyWith<$Res>? get doctorsFilterDto;
}

/// @nodoc
class _$DoctorsListStateCopyWithImpl<$Res, $Val extends DoctorsListState>
    implements $DoctorsListStateCopyWith<$Res> {
  _$DoctorsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasMoreData = null,
    Object? doctorsFilterDto = freezed,
    Object? data = null,
    Object? currentPage = null,
    Object? errorMessage = null,
    Object? mode = freezed,
    Object? lastOffset = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorsFilterDto: freezed == doctorsFilterDto
          ? _value.doctorsFilterDto
          : doctorsFilterDto // ignore: cast_nullable_to_non_nullable
              as DoctorsFilterDto?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as EnModes?,
      lastOffset: null == lastOffset
          ? _value.lastOffset
          : lastOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of DoctorsListState
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
abstract class _$$DoctorsListStateImplCopyWith<$Res>
    implements $DoctorsListStateCopyWith<$Res> {
  factory _$$DoctorsListStateImplCopyWith(_$DoctorsListStateImpl value,
          $Res Function(_$DoctorsListStateImpl) then) =
      __$$DoctorsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      bool hasMoreData,
      DoctorsFilterDto? doctorsFilterDto,
      List<Doctor> data,
      int currentPage,
      String errorMessage,
      EnModes? mode,
      double lastOffset});

  @override
  $DoctorsFilterDtoCopyWith<$Res>? get doctorsFilterDto;
}

/// @nodoc
class __$$DoctorsListStateImplCopyWithImpl<$Res>
    extends _$DoctorsListStateCopyWithImpl<$Res, _$DoctorsListStateImpl>
    implements _$$DoctorsListStateImplCopyWith<$Res> {
  __$$DoctorsListStateImplCopyWithImpl(_$DoctorsListStateImpl _value,
      $Res Function(_$DoctorsListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasMoreData = null,
    Object? doctorsFilterDto = freezed,
    Object? data = null,
    Object? currentPage = null,
    Object? errorMessage = null,
    Object? mode = freezed,
    Object? lastOffset = null,
  }) {
    return _then(_$DoctorsListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      doctorsFilterDto: freezed == doctorsFilterDto
          ? _value.doctorsFilterDto
          : doctorsFilterDto // ignore: cast_nullable_to_non_nullable
              as DoctorsFilterDto?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as EnModes?,
      lastOffset: null == lastOffset
          ? _value.lastOffset
          : lastOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DoctorsListStateImpl implements _DoctorsListState {
  const _$DoctorsListStateImpl(
      {this.isLoading = false,
      this.isLoadingMore = false,
      this.hasMoreData = false,
      this.doctorsFilterDto,
      final List<Doctor> data = const [],
      this.currentPage = 0,
      this.errorMessage = '',
      this.mode,
      this.lastOffset = 0.0})
      : _data = data;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasMoreData;
// TextEditingController? searchCtrl,
  @override
  final DoctorsFilterDto? doctorsFilterDto;
  final List<Doctor> _data;
  @override
  @JsonKey()
  List<Doctor> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

// @Default([]) List<Doctor> flutterDocsList,
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final String errorMessage;
// ScrollController? scrollCtrl,
  @override
  final EnModes? mode;
  @override
  @JsonKey()
  final double lastOffset;

  @override
  String toString() {
    return 'DoctorsListState(isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasMoreData: $hasMoreData, doctorsFilterDto: $doctorsFilterDto, data: $data, currentPage: $currentPage, errorMessage: $errorMessage, mode: $mode, lastOffset: $lastOffset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasMoreData, hasMoreData) ||
                other.hasMoreData == hasMoreData) &&
            (identical(other.doctorsFilterDto, doctorsFilterDto) ||
                other.doctorsFilterDto == doctorsFilterDto) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.lastOffset, lastOffset) ||
                other.lastOffset == lastOffset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLoadingMore,
      hasMoreData,
      doctorsFilterDto,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      errorMessage,
      mode,
      lastOffset);

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsListStateImplCopyWith<_$DoctorsListStateImpl> get copyWith =>
      __$$DoctorsListStateImplCopyWithImpl<_$DoctorsListStateImpl>(
          this, _$identity);
}

abstract class _DoctorsListState implements DoctorsListState {
  const factory _DoctorsListState(
      {final bool isLoading,
      final bool isLoadingMore,
      final bool hasMoreData,
      final DoctorsFilterDto? doctorsFilterDto,
      final List<Doctor> data,
      final int currentPage,
      final String errorMessage,
      final EnModes? mode,
      final double lastOffset}) = _$DoctorsListStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isLoadingMore;
  @override
  bool get hasMoreData; // TextEditingController? searchCtrl,
  @override
  DoctorsFilterDto? get doctorsFilterDto;
  @override
  List<Doctor> get data; // @Default([]) List<Doctor> flutterDocsList,
  @override
  int get currentPage;
  @override
  String get errorMessage; // ScrollController? scrollCtrl,
  @override
  EnModes? get mode;
  @override
  double get lastOffset;

  /// Create a copy of DoctorsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsListStateImplCopyWith<_$DoctorsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SortState {
  int get spIndex => throw _privateConstructorUsedError;
  int get rtIndex => throw _privateConstructorUsedError;
  bool get timeToColor => throw _privateConstructorUsedError;
  ItemScrollController? get spCtrl => throw _privateConstructorUsedError;
  ItemScrollController? get rtCtrl => throw _privateConstructorUsedError;

  /// Create a copy of SortState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortStateCopyWith<SortState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortStateCopyWith<$Res> {
  factory $SortStateCopyWith(SortState value, $Res Function(SortState) then) =
      _$SortStateCopyWithImpl<$Res, SortState>;
  @useResult
  $Res call(
      {int spIndex,
      int rtIndex,
      bool timeToColor,
      ItemScrollController? spCtrl,
      ItemScrollController? rtCtrl});
}

/// @nodoc
class _$SortStateCopyWithImpl<$Res, $Val extends SortState>
    implements $SortStateCopyWith<$Res> {
  _$SortStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SortState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spIndex = null,
    Object? rtIndex = null,
    Object? timeToColor = null,
    Object? spCtrl = freezed,
    Object? rtCtrl = freezed,
  }) {
    return _then(_value.copyWith(
      spIndex: null == spIndex
          ? _value.spIndex
          : spIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rtIndex: null == rtIndex
          ? _value.rtIndex
          : rtIndex // ignore: cast_nullable_to_non_nullable
              as int,
      timeToColor: null == timeToColor
          ? _value.timeToColor
          : timeToColor // ignore: cast_nullable_to_non_nullable
              as bool,
      spCtrl: freezed == spCtrl
          ? _value.spCtrl
          : spCtrl // ignore: cast_nullable_to_non_nullable
              as ItemScrollController?,
      rtCtrl: freezed == rtCtrl
          ? _value.rtCtrl
          : rtCtrl // ignore: cast_nullable_to_non_nullable
              as ItemScrollController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortStateImplCopyWith<$Res>
    implements $SortStateCopyWith<$Res> {
  factory _$$SortStateImplCopyWith(
          _$SortStateImpl value, $Res Function(_$SortStateImpl) then) =
      __$$SortStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int spIndex,
      int rtIndex,
      bool timeToColor,
      ItemScrollController? spCtrl,
      ItemScrollController? rtCtrl});
}

/// @nodoc
class __$$SortStateImplCopyWithImpl<$Res>
    extends _$SortStateCopyWithImpl<$Res, _$SortStateImpl>
    implements _$$SortStateImplCopyWith<$Res> {
  __$$SortStateImplCopyWithImpl(
      _$SortStateImpl _value, $Res Function(_$SortStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SortState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spIndex = null,
    Object? rtIndex = null,
    Object? timeToColor = null,
    Object? spCtrl = freezed,
    Object? rtCtrl = freezed,
  }) {
    return _then(_$SortStateImpl(
      spIndex: null == spIndex
          ? _value.spIndex
          : spIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rtIndex: null == rtIndex
          ? _value.rtIndex
          : rtIndex // ignore: cast_nullable_to_non_nullable
              as int,
      timeToColor: null == timeToColor
          ? _value.timeToColor
          : timeToColor // ignore: cast_nullable_to_non_nullable
              as bool,
      spCtrl: freezed == spCtrl
          ? _value.spCtrl
          : spCtrl // ignore: cast_nullable_to_non_nullable
              as ItemScrollController?,
      rtCtrl: freezed == rtCtrl
          ? _value.rtCtrl
          : rtCtrl // ignore: cast_nullable_to_non_nullable
              as ItemScrollController?,
    ));
  }
}

/// @nodoc

class _$SortStateImpl implements _SortState {
  const _$SortStateImpl(
      {this.spIndex = 0,
      this.rtIndex = 0,
      this.timeToColor = false,
      this.spCtrl,
      this.rtCtrl});

  @override
  @JsonKey()
  final int spIndex;
  @override
  @JsonKey()
  final int rtIndex;
  @override
  @JsonKey()
  final bool timeToColor;
  @override
  final ItemScrollController? spCtrl;
  @override
  final ItemScrollController? rtCtrl;

  @override
  String toString() {
    return 'SortState(spIndex: $spIndex, rtIndex: $rtIndex, timeToColor: $timeToColor, spCtrl: $spCtrl, rtCtrl: $rtCtrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortStateImpl &&
            (identical(other.spIndex, spIndex) || other.spIndex == spIndex) &&
            (identical(other.rtIndex, rtIndex) || other.rtIndex == rtIndex) &&
            (identical(other.timeToColor, timeToColor) ||
                other.timeToColor == timeToColor) &&
            (identical(other.spCtrl, spCtrl) || other.spCtrl == spCtrl) &&
            (identical(other.rtCtrl, rtCtrl) || other.rtCtrl == rtCtrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, spIndex, rtIndex, timeToColor, spCtrl, rtCtrl);

  /// Create a copy of SortState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortStateImplCopyWith<_$SortStateImpl> get copyWith =>
      __$$SortStateImplCopyWithImpl<_$SortStateImpl>(this, _$identity);
}

abstract class _SortState implements SortState {
  const factory _SortState(
      {final int spIndex,
      final int rtIndex,
      final bool timeToColor,
      final ItemScrollController? spCtrl,
      final ItemScrollController? rtCtrl}) = _$SortStateImpl;

  @override
  int get spIndex;
  @override
  int get rtIndex;
  @override
  bool get timeToColor;
  @override
  ItemScrollController? get spCtrl;
  @override
  ItemScrollController? get rtCtrl;

  /// Create a copy of SortState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortStateImplCopyWith<_$SortStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
