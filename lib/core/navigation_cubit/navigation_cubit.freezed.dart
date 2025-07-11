// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationState {
  BottomNavigationTab get selectedNavigation =>
      throw _privateConstructorUsedError;
  bool get isShowen => throw _privateConstructorUsedError;
  List<Speciality> get specialties => throw _privateConstructorUsedError;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
  @useResult
  $Res call(
      {BottomNavigationTab selectedNavigation,
      bool isShowen,
      List<Speciality> specialties});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedNavigation = null,
    Object? isShowen = null,
    Object? specialties = null,
  }) {
    return _then(_value.copyWith(
      selectedNavigation: null == selectedNavigation
          ? _value.selectedNavigation
          : selectedNavigation // ignore: cast_nullable_to_non_nullable
              as BottomNavigationTab,
      isShowen: null == isShowen
          ? _value.isShowen
          : isShowen // ignore: cast_nullable_to_non_nullable
              as bool,
      specialties: null == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavigationStateImplCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$NavigationStateImplCopyWith(_$NavigationStateImpl value,
          $Res Function(_$NavigationStateImpl) then) =
      __$$NavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BottomNavigationTab selectedNavigation,
      bool isShowen,
      List<Speciality> specialties});
}

/// @nodoc
class __$$NavigationStateImplCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$NavigationStateImpl>
    implements _$$NavigationStateImplCopyWith<$Res> {
  __$$NavigationStateImplCopyWithImpl(
      _$NavigationStateImpl _value, $Res Function(_$NavigationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedNavigation = null,
    Object? isShowen = null,
    Object? specialties = null,
  }) {
    return _then(_$NavigationStateImpl(
      selectedNavigation: null == selectedNavigation
          ? _value.selectedNavigation
          : selectedNavigation // ignore: cast_nullable_to_non_nullable
              as BottomNavigationTab,
      isShowen: null == isShowen
          ? _value.isShowen
          : isShowen // ignore: cast_nullable_to_non_nullable
              as bool,
      specialties: null == specialties
          ? _value._specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<Speciality>,
    ));
  }
}

/// @nodoc

class _$NavigationStateImpl implements _NavigationState {
  const _$NavigationStateImpl(
      {required this.selectedNavigation,
      required this.isShowen,
      required final List<Speciality> specialties})
      : _specialties = specialties;

  @override
  final BottomNavigationTab selectedNavigation;
  @override
  final bool isShowen;
  final List<Speciality> _specialties;
  @override
  List<Speciality> get specialties {
    if (_specialties is EqualUnmodifiableListView) return _specialties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialties);
  }

  @override
  String toString() {
    return 'NavigationState(selectedNavigation: $selectedNavigation, isShowen: $isShowen, specialties: $specialties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationStateImpl &&
            (identical(other.selectedNavigation, selectedNavigation) ||
                other.selectedNavigation == selectedNavigation) &&
            (identical(other.isShowen, isShowen) ||
                other.isShowen == isShowen) &&
            const DeepCollectionEquality()
                .equals(other._specialties, _specialties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedNavigation, isShowen,
      const DeepCollectionEquality().hash(_specialties));

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationStateImplCopyWith<_$NavigationStateImpl> get copyWith =>
      __$$NavigationStateImplCopyWithImpl<_$NavigationStateImpl>(
          this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {required final BottomNavigationTab selectedNavigation,
      required final bool isShowen,
      required final List<Speciality> specialties}) = _$NavigationStateImpl;

  @override
  BottomNavigationTab get selectedNavigation;
  @override
  bool get isShowen;
  @override
  List<Speciality> get specialties;

  /// Create a copy of NavigationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigationStateImplCopyWith<_$NavigationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
