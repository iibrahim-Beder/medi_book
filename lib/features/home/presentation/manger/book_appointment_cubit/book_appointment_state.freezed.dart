// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_appointment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookAppointmentState {
  AppointmentType get selectedType => throw _privateConstructorUsedError;
  EnAppointmentSection get currentSection => throw _privateConstructorUsedError;
  Day get selectedDay => throw _privateConstructorUsedError;
  String get selectedTimeSlot => throw _privateConstructorUsedError;
  CarouselSliderController get carouselController =>
      throw _privateConstructorUsedError;
  String get selectedPaymentOption => throw _privateConstructorUsedError;

  /// Create a copy of BookAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookAppointmentStateCopyWith<BookAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAppointmentStateCopyWith<$Res> {
  factory $BookAppointmentStateCopyWith(BookAppointmentState value,
          $Res Function(BookAppointmentState) then) =
      _$BookAppointmentStateCopyWithImpl<$Res, BookAppointmentState>;
  @useResult
  $Res call(
      {AppointmentType selectedType,
      EnAppointmentSection currentSection,
      Day selectedDay,
      String selectedTimeSlot,
      CarouselSliderController carouselController,
      String selectedPaymentOption});
}

/// @nodoc
class _$BookAppointmentStateCopyWithImpl<$Res,
        $Val extends BookAppointmentState>
    implements $BookAppointmentStateCopyWith<$Res> {
  _$BookAppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedType = null,
    Object? currentSection = null,
    Object? selectedDay = null,
    Object? selectedTimeSlot = null,
    Object? carouselController = null,
    Object? selectedPaymentOption = null,
  }) {
    return _then(_value.copyWith(
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as AppointmentType,
      currentSection: null == currentSection
          ? _value.currentSection
          : currentSection // ignore: cast_nullable_to_non_nullable
              as EnAppointmentSection,
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as Day,
      selectedTimeSlot: null == selectedTimeSlot
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as String,
      carouselController: null == carouselController
          ? _value.carouselController
          : carouselController // ignore: cast_nullable_to_non_nullable
              as CarouselSliderController,
      selectedPaymentOption: null == selectedPaymentOption
          ? _value.selectedPaymentOption
          : selectedPaymentOption // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookAppointmentStateImplCopyWith<$Res>
    implements $BookAppointmentStateCopyWith<$Res> {
  factory _$$BookAppointmentStateImplCopyWith(_$BookAppointmentStateImpl value,
          $Res Function(_$BookAppointmentStateImpl) then) =
      __$$BookAppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppointmentType selectedType,
      EnAppointmentSection currentSection,
      Day selectedDay,
      String selectedTimeSlot,
      CarouselSliderController carouselController,
      String selectedPaymentOption});
}

/// @nodoc
class __$$BookAppointmentStateImplCopyWithImpl<$Res>
    extends _$BookAppointmentStateCopyWithImpl<$Res, _$BookAppointmentStateImpl>
    implements _$$BookAppointmentStateImplCopyWith<$Res> {
  __$$BookAppointmentStateImplCopyWithImpl(_$BookAppointmentStateImpl _value,
      $Res Function(_$BookAppointmentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedType = null,
    Object? currentSection = null,
    Object? selectedDay = null,
    Object? selectedTimeSlot = null,
    Object? carouselController = null,
    Object? selectedPaymentOption = null,
  }) {
    return _then(_$BookAppointmentStateImpl(
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as AppointmentType,
      currentSection: null == currentSection
          ? _value.currentSection
          : currentSection // ignore: cast_nullable_to_non_nullable
              as EnAppointmentSection,
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as Day,
      selectedTimeSlot: null == selectedTimeSlot
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as String,
      carouselController: null == carouselController
          ? _value.carouselController
          : carouselController // ignore: cast_nullable_to_non_nullable
              as CarouselSliderController,
      selectedPaymentOption: null == selectedPaymentOption
          ? _value.selectedPaymentOption
          : selectedPaymentOption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookAppointmentStateImpl implements _BookAppointmentState {
  const _$BookAppointmentStateImpl(
      {required this.selectedType,
      required this.currentSection,
      required this.selectedDay,
      required this.selectedTimeSlot,
      required this.carouselController,
      required this.selectedPaymentOption});

  @override
  final AppointmentType selectedType;
  @override
  final EnAppointmentSection currentSection;
  @override
  final Day selectedDay;
  @override
  final String selectedTimeSlot;
  @override
  final CarouselSliderController carouselController;
  @override
  final String selectedPaymentOption;

  @override
  String toString() {
    return 'BookAppointmentState(selectedType: $selectedType, currentSection: $currentSection, selectedDay: $selectedDay, selectedTimeSlot: $selectedTimeSlot, carouselController: $carouselController, selectedPaymentOption: $selectedPaymentOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookAppointmentStateImpl &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            (identical(other.currentSection, currentSection) ||
                other.currentSection == currentSection) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.selectedTimeSlot, selectedTimeSlot) ||
                other.selectedTimeSlot == selectedTimeSlot) &&
            (identical(other.carouselController, carouselController) ||
                other.carouselController == carouselController) &&
            (identical(other.selectedPaymentOption, selectedPaymentOption) ||
                other.selectedPaymentOption == selectedPaymentOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedType, currentSection,
      selectedDay, selectedTimeSlot, carouselController, selectedPaymentOption);

  /// Create a copy of BookAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookAppointmentStateImplCopyWith<_$BookAppointmentStateImpl>
      get copyWith =>
          __$$BookAppointmentStateImplCopyWithImpl<_$BookAppointmentStateImpl>(
              this, _$identity);
}

abstract class _BookAppointmentState implements BookAppointmentState {
  const factory _BookAppointmentState(
          {required final AppointmentType selectedType,
          required final EnAppointmentSection currentSection,
          required final Day selectedDay,
          required final String selectedTimeSlot,
          required final CarouselSliderController carouselController,
          required final String selectedPaymentOption}) =
      _$BookAppointmentStateImpl;

  @override
  AppointmentType get selectedType;
  @override
  EnAppointmentSection get currentSection;
  @override
  Day get selectedDay;
  @override
  String get selectedTimeSlot;
  @override
  CarouselSliderController get carouselController;
  @override
  String get selectedPaymentOption;

  /// Create a copy of BookAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookAppointmentStateImplCopyWith<_$BookAppointmentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
