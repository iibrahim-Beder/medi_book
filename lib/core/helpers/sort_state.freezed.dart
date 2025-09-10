// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SortState {
  int get spIndex => throw _privateConstructorUsedError;
  int get rtIndex => throw _privateConstructorUsedError;

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
  $Res call({int spIndex, int rtIndex});
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
  $Res call({int spIndex, int rtIndex});
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
    ));
  }
}

/// @nodoc

class _$SortStateImpl implements _SortState {
  const _$SortStateImpl({this.spIndex = 0, this.rtIndex = 0});

  @override
  @JsonKey()
  final int spIndex;
  @override
  @JsonKey()
  final int rtIndex;

  @override
  String toString() {
    return 'SortState(spIndex: $spIndex, rtIndex: $rtIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortStateImpl &&
            (identical(other.spIndex, spIndex) || other.spIndex == spIndex) &&
            (identical(other.rtIndex, rtIndex) || other.rtIndex == rtIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, spIndex, rtIndex);

  /// Create a copy of SortState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortStateImplCopyWith<_$SortStateImpl> get copyWith =>
      __$$SortStateImplCopyWithImpl<_$SortStateImpl>(this, _$identity);
}

abstract class _SortState implements SortState {
  const factory _SortState({final int spIndex, final int rtIndex}) =
      _$SortStateImpl;

  @override
  int get spIndex;
  @override
  int get rtIndex;

  /// Create a copy of SortState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortStateImplCopyWith<_$SortStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
