// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_filtered_and_searched_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoctorsFilteredAndSearchedDto _$DoctorsFilteredAndSearchedDtoFromJson(
    Map<String, dynamic> json) {
  return _DoctorsFilteredAndSearchedDto.fromJson(json);
}

/// @nodoc
mixin _$DoctorsFilteredAndSearchedDto {
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  EnDoctorOverviewOrdering get orderBy => throw _privateConstructorUsedError;
  EnDoctorOverviewSearchBy? get searchBy => throw _privateConstructorUsedError;
  String? get searchValue => throw _privateConstructorUsedError;
  int? get specialtyId => throw _privateConstructorUsedError;
  int? get numberOfRatings => throw _privateConstructorUsedError;
  bool? get isRecommended => throw _privateConstructorUsedError;

  /// Serializes this DoctorsFilteredAndSearchedDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorsFilteredAndSearchedDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorsFilteredAndSearchedDtoCopyWith<DoctorsFilteredAndSearchedDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsFilteredAndSearchedDtoCopyWith<$Res> {
  factory $DoctorsFilteredAndSearchedDtoCopyWith(
          DoctorsFilteredAndSearchedDto value,
          $Res Function(DoctorsFilteredAndSearchedDto) then) =
      _$DoctorsFilteredAndSearchedDtoCopyWithImpl<$Res,
          DoctorsFilteredAndSearchedDto>;
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      EnDoctorOverviewOrdering orderBy,
      EnDoctorOverviewSearchBy? searchBy,
      String? searchValue,
      int? specialtyId,
      int? numberOfRatings,
      bool? isRecommended});
}

/// @nodoc
class _$DoctorsFilteredAndSearchedDtoCopyWithImpl<$Res,
        $Val extends DoctorsFilteredAndSearchedDto>
    implements $DoctorsFilteredAndSearchedDtoCopyWith<$Res> {
  _$DoctorsFilteredAndSearchedDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorsFilteredAndSearchedDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? orderBy = null,
    Object? searchBy = freezed,
    Object? searchValue = freezed,
    Object? specialtyId = freezed,
    Object? numberOfRatings = freezed,
    Object? isRecommended = freezed,
  }) {
    return _then(_value.copyWith(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as EnDoctorOverviewOrdering,
      searchBy: freezed == searchBy
          ? _value.searchBy
          : searchBy // ignore: cast_nullable_to_non_nullable
              as EnDoctorOverviewSearchBy?,
      searchValue: freezed == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String?,
      specialtyId: freezed == specialtyId
          ? _value.specialtyId
          : specialtyId // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfRatings: freezed == numberOfRatings
          ? _value.numberOfRatings
          : numberOfRatings // ignore: cast_nullable_to_non_nullable
              as int?,
      isRecommended: freezed == isRecommended
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorsFilteredAndSearchedDtoImplCopyWith<$Res>
    implements $DoctorsFilteredAndSearchedDtoCopyWith<$Res> {
  factory _$$DoctorsFilteredAndSearchedDtoImplCopyWith(
          _$DoctorsFilteredAndSearchedDtoImpl value,
          $Res Function(_$DoctorsFilteredAndSearchedDtoImpl) then) =
      __$$DoctorsFilteredAndSearchedDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageNumber,
      int pageSize,
      EnDoctorOverviewOrdering orderBy,
      EnDoctorOverviewSearchBy? searchBy,
      String? searchValue,
      int? specialtyId,
      int? numberOfRatings,
      bool? isRecommended});
}

/// @nodoc
class __$$DoctorsFilteredAndSearchedDtoImplCopyWithImpl<$Res>
    extends _$DoctorsFilteredAndSearchedDtoCopyWithImpl<$Res,
        _$DoctorsFilteredAndSearchedDtoImpl>
    implements _$$DoctorsFilteredAndSearchedDtoImplCopyWith<$Res> {
  __$$DoctorsFilteredAndSearchedDtoImplCopyWithImpl(
      _$DoctorsFilteredAndSearchedDtoImpl _value,
      $Res Function(_$DoctorsFilteredAndSearchedDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorsFilteredAndSearchedDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? orderBy = null,
    Object? searchBy = freezed,
    Object? searchValue = freezed,
    Object? specialtyId = freezed,
    Object? numberOfRatings = freezed,
    Object? isRecommended = freezed,
  }) {
    return _then(_$DoctorsFilteredAndSearchedDtoImpl(
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as EnDoctorOverviewOrdering,
      searchBy: freezed == searchBy
          ? _value.searchBy
          : searchBy // ignore: cast_nullable_to_non_nullable
              as EnDoctorOverviewSearchBy?,
      searchValue: freezed == searchValue
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String?,
      specialtyId: freezed == specialtyId
          ? _value.specialtyId
          : specialtyId // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfRatings: freezed == numberOfRatings
          ? _value.numberOfRatings
          : numberOfRatings // ignore: cast_nullable_to_non_nullable
              as int?,
      isRecommended: freezed == isRecommended
          ? _value.isRecommended
          : isRecommended // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorsFilteredAndSearchedDtoImpl
    extends _DoctorsFilteredAndSearchedDto {
  const _$DoctorsFilteredAndSearchedDtoImpl(
      {required this.pageNumber,
      required this.pageSize,
      required this.orderBy,
      this.searchBy,
      this.searchValue,
      this.specialtyId,
      this.numberOfRatings,
      this.isRecommended})
      : super._();

  factory _$DoctorsFilteredAndSearchedDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DoctorsFilteredAndSearchedDtoImplFromJson(json);

  @override
  final int pageNumber;
  @override
  final int pageSize;
  @override
  final EnDoctorOverviewOrdering orderBy;
  @override
  final EnDoctorOverviewSearchBy? searchBy;
  @override
  final String? searchValue;
  @override
  final int? specialtyId;
  @override
  final int? numberOfRatings;
  @override
  final bool? isRecommended;

  @override
  String toString() {
    return 'DoctorsFilteredAndSearchedDto(pageNumber: $pageNumber, pageSize: $pageSize, orderBy: $orderBy, searchBy: $searchBy, searchValue: $searchValue, specialtyId: $specialtyId, numberOfRatings: $numberOfRatings, isRecommended: $isRecommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsFilteredAndSearchedDtoImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.searchBy, searchBy) ||
                other.searchBy == searchBy) &&
            (identical(other.searchValue, searchValue) ||
                other.searchValue == searchValue) &&
            (identical(other.specialtyId, specialtyId) ||
                other.specialtyId == specialtyId) &&
            (identical(other.numberOfRatings, numberOfRatings) ||
                other.numberOfRatings == numberOfRatings) &&
            (identical(other.isRecommended, isRecommended) ||
                other.isRecommended == isRecommended));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, pageSize, orderBy,
      searchBy, searchValue, specialtyId, numberOfRatings, isRecommended);

  /// Create a copy of DoctorsFilteredAndSearchedDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsFilteredAndSearchedDtoImplCopyWith<
          _$DoctorsFilteredAndSearchedDtoImpl>
      get copyWith => __$$DoctorsFilteredAndSearchedDtoImplCopyWithImpl<
          _$DoctorsFilteredAndSearchedDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorsFilteredAndSearchedDtoImplToJson(
      this,
    );
  }
}

abstract class _DoctorsFilteredAndSearchedDto
    extends DoctorsFilteredAndSearchedDto {
  const factory _DoctorsFilteredAndSearchedDto(
      {required final int pageNumber,
      required final int pageSize,
      required final EnDoctorOverviewOrdering orderBy,
      final EnDoctorOverviewSearchBy? searchBy,
      final String? searchValue,
      final int? specialtyId,
      final int? numberOfRatings,
      final bool? isRecommended}) = _$DoctorsFilteredAndSearchedDtoImpl;
  const _DoctorsFilteredAndSearchedDto._() : super._();

  factory _DoctorsFilteredAndSearchedDto.fromJson(Map<String, dynamic> json) =
      _$DoctorsFilteredAndSearchedDtoImpl.fromJson;

  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  EnDoctorOverviewOrdering get orderBy;
  @override
  EnDoctorOverviewSearchBy? get searchBy;
  @override
  String? get searchValue;
  @override
  int? get specialtyId;
  @override
  int? get numberOfRatings;
  @override
  bool? get isRecommended;

  /// Create a copy of DoctorsFilteredAndSearchedDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsFilteredAndSearchedDtoImplCopyWith<
          _$DoctorsFilteredAndSearchedDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
