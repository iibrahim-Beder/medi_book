// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_filter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoctorsFilterDto _$DoctorsFilterDtoFromJson(Map<String, dynamic> json) {
  return _DoctorsFilterDto.fromJson(json);
}

/// @nodoc
mixin _$DoctorsFilterDto {
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  EnDoctorOverviewOrdering get orderBy => throw _privateConstructorUsedError;
  EnDoctorOverviewSearchBy? get searchBy => throw _privateConstructorUsedError;
  String? get searchValue => throw _privateConstructorUsedError;
  int? get specialtyId => throw _privateConstructorUsedError;
  int? get numberOfRatings => throw _privateConstructorUsedError;
  bool? get isRecommended => throw _privateConstructorUsedError;

  /// Serializes this DoctorsFilterDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorsFilterDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorsFilterDtoCopyWith<DoctorsFilterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsFilterDtoCopyWith<$Res> {
  factory $DoctorsFilterDtoCopyWith(
          DoctorsFilterDto value, $Res Function(DoctorsFilterDto) then) =
      _$DoctorsFilterDtoCopyWithImpl<$Res, DoctorsFilterDto>;
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
class _$DoctorsFilterDtoCopyWithImpl<$Res, $Val extends DoctorsFilterDto>
    implements $DoctorsFilterDtoCopyWith<$Res> {
  _$DoctorsFilterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorsFilterDto
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
abstract class _$$DoctorsFilterDtoImplCopyWith<$Res>
    implements $DoctorsFilterDtoCopyWith<$Res> {
  factory _$$DoctorsFilterDtoImplCopyWith(_$DoctorsFilterDtoImpl value,
          $Res Function(_$DoctorsFilterDtoImpl) then) =
      __$$DoctorsFilterDtoImplCopyWithImpl<$Res>;
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
class __$$DoctorsFilterDtoImplCopyWithImpl<$Res>
    extends _$DoctorsFilterDtoCopyWithImpl<$Res, _$DoctorsFilterDtoImpl>
    implements _$$DoctorsFilterDtoImplCopyWith<$Res> {
  __$$DoctorsFilterDtoImplCopyWithImpl(_$DoctorsFilterDtoImpl _value,
      $Res Function(_$DoctorsFilterDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorsFilterDto
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
    return _then(_$DoctorsFilterDtoImpl(
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
class _$DoctorsFilterDtoImpl extends _DoctorsFilterDto {
  const _$DoctorsFilterDtoImpl(
      {required this.pageNumber,
      required this.pageSize,
      required this.orderBy,
      this.searchBy,
      this.searchValue,
      this.specialtyId,
      this.numberOfRatings,
      this.isRecommended})
      : super._();

  factory _$DoctorsFilterDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorsFilterDtoImplFromJson(json);

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
    return 'DoctorsFilterDto(pageNumber: $pageNumber, pageSize: $pageSize, orderBy: $orderBy, searchBy: $searchBy, searchValue: $searchValue, specialtyId: $specialtyId, numberOfRatings: $numberOfRatings, isRecommended: $isRecommended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsFilterDtoImpl &&
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

  /// Create a copy of DoctorsFilterDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsFilterDtoImplCopyWith<_$DoctorsFilterDtoImpl> get copyWith =>
      __$$DoctorsFilterDtoImplCopyWithImpl<_$DoctorsFilterDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorsFilterDtoImplToJson(
      this,
    );
  }
}

abstract class _DoctorsFilterDto extends DoctorsFilterDto {
  const factory _DoctorsFilterDto(
      {required final int pageNumber,
      required final int pageSize,
      required final EnDoctorOverviewOrdering orderBy,
      final EnDoctorOverviewSearchBy? searchBy,
      final String? searchValue,
      final int? specialtyId,
      final int? numberOfRatings,
      final bool? isRecommended}) = _$DoctorsFilterDtoImpl;
  const _DoctorsFilterDto._() : super._();

  factory _DoctorsFilterDto.fromJson(Map<String, dynamic> json) =
      _$DoctorsFilterDtoImpl.fromJson;

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

  /// Create a copy of DoctorsFilterDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsFilterDtoImplCopyWith<_$DoctorsFilterDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
