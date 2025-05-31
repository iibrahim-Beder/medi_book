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
  double get reviewsLastOffset => throw _privateConstructorUsedError;
  ScrollController get reviewsScrollCtrl => throw _privateConstructorUsedError;

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
      double reviewsLastOffset,
      ScrollController reviewsScrollCtrl});
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
    Object? reviewsLastOffset = null,
    Object? reviewsScrollCtrl = null,
  }) {
    return _then(_value.copyWith(
      selectedSection: null == selectedSection
          ? _value.selectedSection
          : selectedSection // ignore: cast_nullable_to_non_nullable
              as EnDoctorSection,
      reviewsLastOffset: null == reviewsLastOffset
          ? _value.reviewsLastOffset
          : reviewsLastOffset // ignore: cast_nullable_to_non_nullable
              as double,
      reviewsScrollCtrl: null == reviewsScrollCtrl
          ? _value.reviewsScrollCtrl
          : reviewsScrollCtrl // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ) as $Val);
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
      double reviewsLastOffset,
      ScrollController reviewsScrollCtrl});
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
    Object? reviewsLastOffset = null,
    Object? reviewsScrollCtrl = null,
  }) {
    return _then(_$DetailsDoctorStateImpl(
      selectedSection: null == selectedSection
          ? _value.selectedSection
          : selectedSection // ignore: cast_nullable_to_non_nullable
              as EnDoctorSection,
      reviewsLastOffset: null == reviewsLastOffset
          ? _value.reviewsLastOffset
          : reviewsLastOffset // ignore: cast_nullable_to_non_nullable
              as double,
      reviewsScrollCtrl: null == reviewsScrollCtrl
          ? _value.reviewsScrollCtrl
          : reviewsScrollCtrl // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc

class _$DetailsDoctorStateImpl implements _DetailsDoctorState {
  const _$DetailsDoctorStateImpl(
      {required this.selectedSection,
      required this.reviewsLastOffset,
      required this.reviewsScrollCtrl});

  @override
  final EnDoctorSection selectedSection;
  @override
  final double reviewsLastOffset;
  @override
  final ScrollController reviewsScrollCtrl;

  @override
  String toString() {
    return 'DetailsDoctorState(selectedSection: $selectedSection, reviewsLastOffset: $reviewsLastOffset, reviewsScrollCtrl: $reviewsScrollCtrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsDoctorStateImpl &&
            (identical(other.selectedSection, selectedSection) ||
                other.selectedSection == selectedSection) &&
            (identical(other.reviewsLastOffset, reviewsLastOffset) ||
                other.reviewsLastOffset == reviewsLastOffset) &&
            (identical(other.reviewsScrollCtrl, reviewsScrollCtrl) ||
                other.reviewsScrollCtrl == reviewsScrollCtrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedSection, reviewsLastOffset, reviewsScrollCtrl);

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
          required final double reviewsLastOffset,
          required final ScrollController reviewsScrollCtrl}) =
      _$DetailsDoctorStateImpl;

  @override
  EnDoctorSection get selectedSection;
  @override
  double get reviewsLastOffset;
  @override
  ScrollController get reviewsScrollCtrl;

  /// Create a copy of DetailsDoctorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsDoctorStateImplCopyWith<_$DetailsDoctorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
