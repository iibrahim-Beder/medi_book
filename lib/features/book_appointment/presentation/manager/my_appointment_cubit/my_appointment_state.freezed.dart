// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_appointment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyAppointmentState {
  MyAppointmentType get selectedSection => throw _privateConstructorUsedError;

  /// Create a copy of MyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyAppointmentStateCopyWith<MyAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAppointmentStateCopyWith<$Res> {
  factory $MyAppointmentStateCopyWith(
          MyAppointmentState value, $Res Function(MyAppointmentState) then) =
      _$MyAppointmentStateCopyWithImpl<$Res, MyAppointmentState>;
  @useResult
  $Res call({MyAppointmentType selectedSection});
}

/// @nodoc
class _$MyAppointmentStateCopyWithImpl<$Res, $Val extends MyAppointmentState>
    implements $MyAppointmentStateCopyWith<$Res> {
  _$MyAppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSection = null,
  }) {
    return _then(_value.copyWith(
      selectedSection: null == selectedSection
          ? _value.selectedSection
          : selectedSection // ignore: cast_nullable_to_non_nullable
              as MyAppointmentType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyAppointmentStateImplCopyWith<$Res>
    implements $MyAppointmentStateCopyWith<$Res> {
  factory _$$MyAppointmentStateImplCopyWith(_$MyAppointmentStateImpl value,
          $Res Function(_$MyAppointmentStateImpl) then) =
      __$$MyAppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyAppointmentType selectedSection});
}

/// @nodoc
class __$$MyAppointmentStateImplCopyWithImpl<$Res>
    extends _$MyAppointmentStateCopyWithImpl<$Res, _$MyAppointmentStateImpl>
    implements _$$MyAppointmentStateImplCopyWith<$Res> {
  __$$MyAppointmentStateImplCopyWithImpl(_$MyAppointmentStateImpl _value,
      $Res Function(_$MyAppointmentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSection = null,
  }) {
    return _then(_$MyAppointmentStateImpl(
      selectedSection: null == selectedSection
          ? _value.selectedSection
          : selectedSection // ignore: cast_nullable_to_non_nullable
              as MyAppointmentType,
    ));
  }
}

/// @nodoc

class _$MyAppointmentStateImpl implements _MyAppointmentState {
  const _$MyAppointmentStateImpl({required this.selectedSection});

  @override
  final MyAppointmentType selectedSection;

  @override
  String toString() {
    return 'MyAppointmentState(selectedSection: $selectedSection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAppointmentStateImpl &&
            (identical(other.selectedSection, selectedSection) ||
                other.selectedSection == selectedSection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSection);

  /// Create a copy of MyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAppointmentStateImplCopyWith<_$MyAppointmentStateImpl> get copyWith =>
      __$$MyAppointmentStateImplCopyWithImpl<_$MyAppointmentStateImpl>(
          this, _$identity);
}

abstract class _MyAppointmentState implements MyAppointmentState {
  const factory _MyAppointmentState(
          {required final MyAppointmentType selectedSection}) =
      _$MyAppointmentStateImpl;

  @override
  MyAppointmentType get selectedSection;

  /// Create a copy of MyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyAppointmentStateImplCopyWith<_$MyAppointmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
