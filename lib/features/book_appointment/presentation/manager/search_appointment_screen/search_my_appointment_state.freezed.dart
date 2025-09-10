// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_my_appointment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchMyAppointmentState {
  MyAppointmentType get selectedFilter => throw _privateConstructorUsedError;

  /// Create a copy of SearchMyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchMyAppointmentStateCopyWith<SearchMyAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMyAppointmentStateCopyWith<$Res> {
  factory $SearchMyAppointmentStateCopyWith(SearchMyAppointmentState value,
          $Res Function(SearchMyAppointmentState) then) =
      _$SearchMyAppointmentStateCopyWithImpl<$Res, SearchMyAppointmentState>;
  @useResult
  $Res call({MyAppointmentType selectedFilter});
}

/// @nodoc
class _$SearchMyAppointmentStateCopyWithImpl<$Res,
        $Val extends SearchMyAppointmentState>
    implements $SearchMyAppointmentStateCopyWith<$Res> {
  _$SearchMyAppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchMyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFilter = null,
  }) {
    return _then(_value.copyWith(
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as MyAppointmentType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchAppointmentStateImplCopyWith<$Res>
    implements $SearchMyAppointmentStateCopyWith<$Res> {
  factory _$$SearchAppointmentStateImplCopyWith(
          _$SearchAppointmentStateImpl value,
          $Res Function(_$SearchAppointmentStateImpl) then) =
      __$$SearchAppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyAppointmentType selectedFilter});
}

/// @nodoc
class __$$SearchAppointmentStateImplCopyWithImpl<$Res>
    extends _$SearchMyAppointmentStateCopyWithImpl<$Res,
        _$SearchAppointmentStateImpl>
    implements _$$SearchAppointmentStateImplCopyWith<$Res> {
  __$$SearchAppointmentStateImplCopyWithImpl(
      _$SearchAppointmentStateImpl _value,
      $Res Function(_$SearchAppointmentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchMyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFilter = null,
  }) {
    return _then(_$SearchAppointmentStateImpl(
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as MyAppointmentType,
    ));
  }
}

/// @nodoc

class _$SearchAppointmentStateImpl implements _SearchAppointmentState {
  const _$SearchAppointmentStateImpl({required this.selectedFilter});

  @override
  final MyAppointmentType selectedFilter;

  @override
  String toString() {
    return 'SearchMyAppointmentState(selectedFilter: $selectedFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAppointmentStateImpl &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedFilter);

  /// Create a copy of SearchMyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAppointmentStateImplCopyWith<_$SearchAppointmentStateImpl>
      get copyWith => __$$SearchAppointmentStateImplCopyWithImpl<
          _$SearchAppointmentStateImpl>(this, _$identity);
}

abstract class _SearchAppointmentState implements SearchMyAppointmentState {
  const factory _SearchAppointmentState(
          {required final MyAppointmentType selectedFilter}) =
      _$SearchAppointmentStateImpl;

  @override
  MyAppointmentType get selectedFilter;

  /// Create a copy of SearchMyAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAppointmentStateImplCopyWith<_$SearchAppointmentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
