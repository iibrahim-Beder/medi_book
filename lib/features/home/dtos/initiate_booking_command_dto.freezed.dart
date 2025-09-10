// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initiate_booking_command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitiateBookingCommandDto _$InitiateBookingCommandDtoFromJson(
    Map<String, dynamic> json) {
  return _InitiateBookingCommandDto.fromJson(json);
}

/// @nodoc
mixin _$InitiateBookingCommandDto {
  int get patientId => throw _privateConstructorUsedError;
  int get timeSoltId => throw _privateConstructorUsedError;
  int get appointmentType => throw _privateConstructorUsedError;

  /// Serializes this InitiateBookingCommandDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitiateBookingCommandDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitiateBookingCommandDtoCopyWith<InitiateBookingCommandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiateBookingCommandDtoCopyWith<$Res> {
  factory $InitiateBookingCommandDtoCopyWith(InitiateBookingCommandDto value,
          $Res Function(InitiateBookingCommandDto) then) =
      _$InitiateBookingCommandDtoCopyWithImpl<$Res, InitiateBookingCommandDto>;
  @useResult
  $Res call({int patientId, int timeSoltId, int appointmentType});
}

/// @nodoc
class _$InitiateBookingCommandDtoCopyWithImpl<$Res,
        $Val extends InitiateBookingCommandDto>
    implements $InitiateBookingCommandDtoCopyWith<$Res> {
  _$InitiateBookingCommandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitiateBookingCommandDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? timeSoltId = null,
    Object? appointmentType = null,
  }) {
    return _then(_value.copyWith(
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
      timeSoltId: null == timeSoltId
          ? _value.timeSoltId
          : timeSoltId // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentType: null == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitiateBookingCommandDtoImplCopyWith<$Res>
    implements $InitiateBookingCommandDtoCopyWith<$Res> {
  factory _$$InitiateBookingCommandDtoImplCopyWith(
          _$InitiateBookingCommandDtoImpl value,
          $Res Function(_$InitiateBookingCommandDtoImpl) then) =
      __$$InitiateBookingCommandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int patientId, int timeSoltId, int appointmentType});
}

/// @nodoc
class __$$InitiateBookingCommandDtoImplCopyWithImpl<$Res>
    extends _$InitiateBookingCommandDtoCopyWithImpl<$Res,
        _$InitiateBookingCommandDtoImpl>
    implements _$$InitiateBookingCommandDtoImplCopyWith<$Res> {
  __$$InitiateBookingCommandDtoImplCopyWithImpl(
      _$InitiateBookingCommandDtoImpl _value,
      $Res Function(_$InitiateBookingCommandDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitiateBookingCommandDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? timeSoltId = null,
    Object? appointmentType = null,
  }) {
    return _then(_$InitiateBookingCommandDtoImpl(
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
      timeSoltId: null == timeSoltId
          ? _value.timeSoltId
          : timeSoltId // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentType: null == appointmentType
          ? _value.appointmentType
          : appointmentType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitiateBookingCommandDtoImpl extends _InitiateBookingCommandDto {
  const _$InitiateBookingCommandDtoImpl(
      {required this.patientId,
      required this.timeSoltId,
      required this.appointmentType})
      : super._();

  factory _$InitiateBookingCommandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitiateBookingCommandDtoImplFromJson(json);

  @override
  final int patientId;
  @override
  final int timeSoltId;
  @override
  final int appointmentType;

  @override
  String toString() {
    return 'InitiateBookingCommandDto(patientId: $patientId, timeSoltId: $timeSoltId, appointmentType: $appointmentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiateBookingCommandDtoImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.timeSoltId, timeSoltId) ||
                other.timeSoltId == timeSoltId) &&
            (identical(other.appointmentType, appointmentType) ||
                other.appointmentType == appointmentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, patientId, timeSoltId, appointmentType);

  /// Create a copy of InitiateBookingCommandDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiateBookingCommandDtoImplCopyWith<_$InitiateBookingCommandDtoImpl>
      get copyWith => __$$InitiateBookingCommandDtoImplCopyWithImpl<
          _$InitiateBookingCommandDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitiateBookingCommandDtoImplToJson(
      this,
    );
  }
}

abstract class _InitiateBookingCommandDto extends InitiateBookingCommandDto {
  const factory _InitiateBookingCommandDto(
      {required final int patientId,
      required final int timeSoltId,
      required final int appointmentType}) = _$InitiateBookingCommandDtoImpl;
  const _InitiateBookingCommandDto._() : super._();

  factory _InitiateBookingCommandDto.fromJson(Map<String, dynamic> json) =
      _$InitiateBookingCommandDtoImpl.fromJson;

  @override
  int get patientId;
  @override
  int get timeSoltId;
  @override
  int get appointmentType;

  /// Create a copy of InitiateBookingCommandDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitiateBookingCommandDtoImplCopyWith<_$InitiateBookingCommandDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
