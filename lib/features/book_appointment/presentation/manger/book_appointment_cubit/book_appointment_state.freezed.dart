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
  DoctorTimeSlot? get selectedTimeSlot => throw _privateConstructorUsedError;
  AvailableWorkDay? get seletedDay => throw _privateConstructorUsedError;
  bool get buttonLoading => throw _privateConstructorUsedError;
  AppointmentType get selectedType => throw _privateConstructorUsedError;
  EnAppointmentSection get currentSection => throw _privateConstructorUsedError;
  CarouselSliderController get carouselController =>
      throw _privateConstructorUsedError;
  DoctorDayTimeSlotsState get doctorDayTimeSlotsState =>
      throw _privateConstructorUsedError;
  DoctorAvailableDaysState get doctorAvailableDaysState =>
      throw _privateConstructorUsedError;
  AddInitiateBookingState get addInitiateBookingState =>
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
      {DoctorTimeSlot? selectedTimeSlot,
      AvailableWorkDay? seletedDay,
      bool buttonLoading,
      AppointmentType selectedType,
      EnAppointmentSection currentSection,
      CarouselSliderController carouselController,
      DoctorDayTimeSlotsState doctorDayTimeSlotsState,
      DoctorAvailableDaysState doctorAvailableDaysState,
      AddInitiateBookingState addInitiateBookingState,
      String selectedPaymentOption});

  $DoctorDayTimeSlotsStateCopyWith<$Res> get doctorDayTimeSlotsState;
  $DoctorAvailableDaysStateCopyWith<$Res> get doctorAvailableDaysState;
  $AddInitiateBookingStateCopyWith<$Res> get addInitiateBookingState;
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
    Object? selectedTimeSlot = freezed,
    Object? seletedDay = freezed,
    Object? buttonLoading = null,
    Object? selectedType = null,
    Object? currentSection = null,
    Object? carouselController = null,
    Object? doctorDayTimeSlotsState = null,
    Object? doctorAvailableDaysState = null,
    Object? addInitiateBookingState = null,
    Object? selectedPaymentOption = null,
  }) {
    return _then(_value.copyWith(
      selectedTimeSlot: freezed == selectedTimeSlot
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as DoctorTimeSlot?,
      seletedDay: freezed == seletedDay
          ? _value.seletedDay
          : seletedDay // ignore: cast_nullable_to_non_nullable
              as AvailableWorkDay?,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as AppointmentType,
      currentSection: null == currentSection
          ? _value.currentSection
          : currentSection // ignore: cast_nullable_to_non_nullable
              as EnAppointmentSection,
      carouselController: null == carouselController
          ? _value.carouselController
          : carouselController // ignore: cast_nullable_to_non_nullable
              as CarouselSliderController,
      doctorDayTimeSlotsState: null == doctorDayTimeSlotsState
          ? _value.doctorDayTimeSlotsState
          : doctorDayTimeSlotsState // ignore: cast_nullable_to_non_nullable
              as DoctorDayTimeSlotsState,
      doctorAvailableDaysState: null == doctorAvailableDaysState
          ? _value.doctorAvailableDaysState
          : doctorAvailableDaysState // ignore: cast_nullable_to_non_nullable
              as DoctorAvailableDaysState,
      addInitiateBookingState: null == addInitiateBookingState
          ? _value.addInitiateBookingState
          : addInitiateBookingState // ignore: cast_nullable_to_non_nullable
              as AddInitiateBookingState,
      selectedPaymentOption: null == selectedPaymentOption
          ? _value.selectedPaymentOption
          : selectedPaymentOption // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of BookAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorDayTimeSlotsStateCopyWith<$Res> get doctorDayTimeSlotsState {
    return $DoctorDayTimeSlotsStateCopyWith<$Res>(
        _value.doctorDayTimeSlotsState, (value) {
      return _then(_value.copyWith(doctorDayTimeSlotsState: value) as $Val);
    });
  }

  /// Create a copy of BookAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorAvailableDaysStateCopyWith<$Res> get doctorAvailableDaysState {
    return $DoctorAvailableDaysStateCopyWith<$Res>(
        _value.doctorAvailableDaysState, (value) {
      return _then(_value.copyWith(doctorAvailableDaysState: value) as $Val);
    });
  }

  /// Create a copy of BookAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddInitiateBookingStateCopyWith<$Res> get addInitiateBookingState {
    return $AddInitiateBookingStateCopyWith<$Res>(
        _value.addInitiateBookingState, (value) {
      return _then(_value.copyWith(addInitiateBookingState: value) as $Val);
    });
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
      {DoctorTimeSlot? selectedTimeSlot,
      AvailableWorkDay? seletedDay,
      bool buttonLoading,
      AppointmentType selectedType,
      EnAppointmentSection currentSection,
      CarouselSliderController carouselController,
      DoctorDayTimeSlotsState doctorDayTimeSlotsState,
      DoctorAvailableDaysState doctorAvailableDaysState,
      AddInitiateBookingState addInitiateBookingState,
      String selectedPaymentOption});

  @override
  $DoctorDayTimeSlotsStateCopyWith<$Res> get doctorDayTimeSlotsState;
  @override
  $DoctorAvailableDaysStateCopyWith<$Res> get doctorAvailableDaysState;
  @override
  $AddInitiateBookingStateCopyWith<$Res> get addInitiateBookingState;
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
    Object? selectedTimeSlot = freezed,
    Object? seletedDay = freezed,
    Object? buttonLoading = null,
    Object? selectedType = null,
    Object? currentSection = null,
    Object? carouselController = null,
    Object? doctorDayTimeSlotsState = null,
    Object? doctorAvailableDaysState = null,
    Object? addInitiateBookingState = null,
    Object? selectedPaymentOption = null,
  }) {
    return _then(_$BookAppointmentStateImpl(
      selectedTimeSlot: freezed == selectedTimeSlot
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as DoctorTimeSlot?,
      seletedDay: freezed == seletedDay
          ? _value.seletedDay
          : seletedDay // ignore: cast_nullable_to_non_nullable
              as AvailableWorkDay?,
      buttonLoading: null == buttonLoading
          ? _value.buttonLoading
          : buttonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedType: null == selectedType
          ? _value.selectedType
          : selectedType // ignore: cast_nullable_to_non_nullable
              as AppointmentType,
      currentSection: null == currentSection
          ? _value.currentSection
          : currentSection // ignore: cast_nullable_to_non_nullable
              as EnAppointmentSection,
      carouselController: null == carouselController
          ? _value.carouselController
          : carouselController // ignore: cast_nullable_to_non_nullable
              as CarouselSliderController,
      doctorDayTimeSlotsState: null == doctorDayTimeSlotsState
          ? _value.doctorDayTimeSlotsState
          : doctorDayTimeSlotsState // ignore: cast_nullable_to_non_nullable
              as DoctorDayTimeSlotsState,
      doctorAvailableDaysState: null == doctorAvailableDaysState
          ? _value.doctorAvailableDaysState
          : doctorAvailableDaysState // ignore: cast_nullable_to_non_nullable
              as DoctorAvailableDaysState,
      addInitiateBookingState: null == addInitiateBookingState
          ? _value.addInitiateBookingState
          : addInitiateBookingState // ignore: cast_nullable_to_non_nullable
              as AddInitiateBookingState,
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
      {this.selectedTimeSlot,
      this.seletedDay,
      required this.buttonLoading,
      required this.selectedType,
      required this.currentSection,
      required this.carouselController,
      required this.doctorDayTimeSlotsState,
      required this.doctorAvailableDaysState,
      required this.addInitiateBookingState,
      required this.selectedPaymentOption});

  @override
  final DoctorTimeSlot? selectedTimeSlot;
  @override
  final AvailableWorkDay? seletedDay;
  @override
  final bool buttonLoading;
  @override
  final AppointmentType selectedType;
  @override
  final EnAppointmentSection currentSection;
  @override
  final CarouselSliderController carouselController;
  @override
  final DoctorDayTimeSlotsState doctorDayTimeSlotsState;
  @override
  final DoctorAvailableDaysState doctorAvailableDaysState;
  @override
  final AddInitiateBookingState addInitiateBookingState;
  @override
  final String selectedPaymentOption;

  @override
  String toString() {
    return 'BookAppointmentState(selectedTimeSlot: $selectedTimeSlot, seletedDay: $seletedDay, buttonLoading: $buttonLoading, selectedType: $selectedType, currentSection: $currentSection, carouselController: $carouselController, doctorDayTimeSlotsState: $doctorDayTimeSlotsState, doctorAvailableDaysState: $doctorAvailableDaysState, addInitiateBookingState: $addInitiateBookingState, selectedPaymentOption: $selectedPaymentOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookAppointmentStateImpl &&
            (identical(other.selectedTimeSlot, selectedTimeSlot) ||
                other.selectedTimeSlot == selectedTimeSlot) &&
            (identical(other.seletedDay, seletedDay) ||
                other.seletedDay == seletedDay) &&
            (identical(other.buttonLoading, buttonLoading) ||
                other.buttonLoading == buttonLoading) &&
            (identical(other.selectedType, selectedType) ||
                other.selectedType == selectedType) &&
            (identical(other.currentSection, currentSection) ||
                other.currentSection == currentSection) &&
            (identical(other.carouselController, carouselController) ||
                other.carouselController == carouselController) &&
            (identical(
                    other.doctorDayTimeSlotsState, doctorDayTimeSlotsState) ||
                other.doctorDayTimeSlotsState == doctorDayTimeSlotsState) &&
            (identical(
                    other.doctorAvailableDaysState, doctorAvailableDaysState) ||
                other.doctorAvailableDaysState == doctorAvailableDaysState) &&
            (identical(
                    other.addInitiateBookingState, addInitiateBookingState) ||
                other.addInitiateBookingState == addInitiateBookingState) &&
            (identical(other.selectedPaymentOption, selectedPaymentOption) ||
                other.selectedPaymentOption == selectedPaymentOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTimeSlot,
      seletedDay,
      buttonLoading,
      selectedType,
      currentSection,
      carouselController,
      doctorDayTimeSlotsState,
      doctorAvailableDaysState,
      addInitiateBookingState,
      selectedPaymentOption);

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
          {final DoctorTimeSlot? selectedTimeSlot,
          final AvailableWorkDay? seletedDay,
          required final bool buttonLoading,
          required final AppointmentType selectedType,
          required final EnAppointmentSection currentSection,
          required final CarouselSliderController carouselController,
          required final DoctorDayTimeSlotsState doctorDayTimeSlotsState,
          required final DoctorAvailableDaysState doctorAvailableDaysState,
          required final AddInitiateBookingState addInitiateBookingState,
          required final String selectedPaymentOption}) =
      _$BookAppointmentStateImpl;

  @override
  DoctorTimeSlot? get selectedTimeSlot;
  @override
  AvailableWorkDay? get seletedDay;
  @override
  bool get buttonLoading;
  @override
  AppointmentType get selectedType;
  @override
  EnAppointmentSection get currentSection;
  @override
  CarouselSliderController get carouselController;
  @override
  DoctorDayTimeSlotsState get doctorDayTimeSlotsState;
  @override
  DoctorAvailableDaysState get doctorAvailableDaysState;
  @override
  AddInitiateBookingState get addInitiateBookingState;
  @override
  String get selectedPaymentOption;

  /// Create a copy of BookAppointmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookAppointmentStateImplCopyWith<_$BookAppointmentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorDayTimeSlotsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DoctorTimeSlot>? get data => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DoctorDayTimeSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorDayTimeSlotsStateCopyWith<DoctorDayTimeSlotsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorDayTimeSlotsStateCopyWith<$Res> {
  factory $DoctorDayTimeSlotsStateCopyWith(DoctorDayTimeSlotsState value,
          $Res Function(DoctorDayTimeSlotsState) then) =
      _$DoctorDayTimeSlotsStateCopyWithImpl<$Res, DoctorDayTimeSlotsState>;
  @useResult
  $Res call({bool isLoading, List<DoctorTimeSlot>? data, String errorMessage});
}

/// @nodoc
class _$DoctorDayTimeSlotsStateCopyWithImpl<$Res,
        $Val extends DoctorDayTimeSlotsState>
    implements $DoctorDayTimeSlotsStateCopyWith<$Res> {
  _$DoctorDayTimeSlotsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorDayTimeSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DoctorTimeSlot>?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorDayTimeSlotsImplCopyWith<$Res>
    implements $DoctorDayTimeSlotsStateCopyWith<$Res> {
  factory _$$DoctorDayTimeSlotsImplCopyWith(_$DoctorDayTimeSlotsImpl value,
          $Res Function(_$DoctorDayTimeSlotsImpl) then) =
      __$$DoctorDayTimeSlotsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<DoctorTimeSlot>? data, String errorMessage});
}

/// @nodoc
class __$$DoctorDayTimeSlotsImplCopyWithImpl<$Res>
    extends _$DoctorDayTimeSlotsStateCopyWithImpl<$Res,
        _$DoctorDayTimeSlotsImpl>
    implements _$$DoctorDayTimeSlotsImplCopyWith<$Res> {
  __$$DoctorDayTimeSlotsImplCopyWithImpl(_$DoctorDayTimeSlotsImpl _value,
      $Res Function(_$DoctorDayTimeSlotsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorDayTimeSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$DoctorDayTimeSlotsImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DoctorTimeSlot>?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoctorDayTimeSlotsImpl implements _DoctorDayTimeSlots {
  const _$DoctorDayTimeSlotsImpl(
      {this.isLoading = false,
      final List<DoctorTimeSlot>? data,
      this.errorMessage = ''})
      : _data = data;

  @override
  @JsonKey()
  final bool isLoading;
  final List<DoctorTimeSlot>? _data;
  @override
  List<DoctorTimeSlot>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'DoctorDayTimeSlotsState(isLoading: $isLoading, data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorDayTimeSlotsImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_data), errorMessage);

  /// Create a copy of DoctorDayTimeSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorDayTimeSlotsImplCopyWith<_$DoctorDayTimeSlotsImpl> get copyWith =>
      __$$DoctorDayTimeSlotsImplCopyWithImpl<_$DoctorDayTimeSlotsImpl>(
          this, _$identity);
}

abstract class _DoctorDayTimeSlots implements DoctorDayTimeSlotsState {
  const factory _DoctorDayTimeSlots(
      {final bool isLoading,
      final List<DoctorTimeSlot>? data,
      final String errorMessage}) = _$DoctorDayTimeSlotsImpl;

  @override
  bool get isLoading;
  @override
  List<DoctorTimeSlot>? get data;
  @override
  String get errorMessage;

  /// Create a copy of DoctorDayTimeSlotsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorDayTimeSlotsImplCopyWith<_$DoctorDayTimeSlotsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorAvailableDaysState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<AvailableWorkDay>? get data => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of DoctorAvailableDaysState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorAvailableDaysStateCopyWith<DoctorAvailableDaysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorAvailableDaysStateCopyWith<$Res> {
  factory $DoctorAvailableDaysStateCopyWith(DoctorAvailableDaysState value,
          $Res Function(DoctorAvailableDaysState) then) =
      _$DoctorAvailableDaysStateCopyWithImpl<$Res, DoctorAvailableDaysState>;
  @useResult
  $Res call(
      {bool isLoading, List<AvailableWorkDay>? data, String errorMessage});
}

/// @nodoc
class _$DoctorAvailableDaysStateCopyWithImpl<$Res,
        $Val extends DoctorAvailableDaysState>
    implements $DoctorAvailableDaysStateCopyWith<$Res> {
  _$DoctorAvailableDaysStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorAvailableDaysState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AvailableWorkDay>?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorAvailableDaysStateImplCopyWith<$Res>
    implements $DoctorAvailableDaysStateCopyWith<$Res> {
  factory _$$DoctorAvailableDaysStateImplCopyWith(
          _$DoctorAvailableDaysStateImpl value,
          $Res Function(_$DoctorAvailableDaysStateImpl) then) =
      __$$DoctorAvailableDaysStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<AvailableWorkDay>? data, String errorMessage});
}

/// @nodoc
class __$$DoctorAvailableDaysStateImplCopyWithImpl<$Res>
    extends _$DoctorAvailableDaysStateCopyWithImpl<$Res,
        _$DoctorAvailableDaysStateImpl>
    implements _$$DoctorAvailableDaysStateImplCopyWith<$Res> {
  __$$DoctorAvailableDaysStateImplCopyWithImpl(
      _$DoctorAvailableDaysStateImpl _value,
      $Res Function(_$DoctorAvailableDaysStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorAvailableDaysState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$DoctorAvailableDaysStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AvailableWorkDay>?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoctorAvailableDaysStateImpl implements _DoctorAvailableDaysState {
  const _$DoctorAvailableDaysStateImpl(
      {this.isLoading = false,
      final List<AvailableWorkDay>? data,
      this.errorMessage = ''})
      : _data = data;

  @override
  @JsonKey()
  final bool isLoading;
  final List<AvailableWorkDay>? _data;
  @override
  List<AvailableWorkDay>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'DoctorAvailableDaysState(isLoading: $isLoading, data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorAvailableDaysStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_data), errorMessage);

  /// Create a copy of DoctorAvailableDaysState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorAvailableDaysStateImplCopyWith<_$DoctorAvailableDaysStateImpl>
      get copyWith => __$$DoctorAvailableDaysStateImplCopyWithImpl<
          _$DoctorAvailableDaysStateImpl>(this, _$identity);
}

abstract class _DoctorAvailableDaysState implements DoctorAvailableDaysState {
  const factory _DoctorAvailableDaysState(
      {final bool isLoading,
      final List<AvailableWorkDay>? data,
      final String errorMessage}) = _$DoctorAvailableDaysStateImpl;

  @override
  bool get isLoading;
  @override
  List<AvailableWorkDay>? get data;
  @override
  String get errorMessage;

  /// Create a copy of DoctorAvailableDaysState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorAvailableDaysStateImplCopyWith<_$DoctorAvailableDaysStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddInitiateBookingState {
  bool get isLoading => throw _privateConstructorUsedError;
  InitiateBookingResponse? get data => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AddInitiateBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddInitiateBookingStateCopyWith<AddInitiateBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddInitiateBookingStateCopyWith<$Res> {
  factory $AddInitiateBookingStateCopyWith(AddInitiateBookingState value,
          $Res Function(AddInitiateBookingState) then) =
      _$AddInitiateBookingStateCopyWithImpl<$Res, AddInitiateBookingState>;
  @useResult
  $Res call(
      {bool isLoading, InitiateBookingResponse? data, String errorMessage});
}

/// @nodoc
class _$AddInitiateBookingStateCopyWithImpl<$Res,
        $Val extends AddInitiateBookingState>
    implements $AddInitiateBookingStateCopyWith<$Res> {
  _$AddInitiateBookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddInitiateBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InitiateBookingResponse?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddInitiateBookingStateImplCopyWith<$Res>
    implements $AddInitiateBookingStateCopyWith<$Res> {
  factory _$$AddInitiateBookingStateImplCopyWith(
          _$AddInitiateBookingStateImpl value,
          $Res Function(_$AddInitiateBookingStateImpl) then) =
      __$$AddInitiateBookingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, InitiateBookingResponse? data, String errorMessage});
}

/// @nodoc
class __$$AddInitiateBookingStateImplCopyWithImpl<$Res>
    extends _$AddInitiateBookingStateCopyWithImpl<$Res,
        _$AddInitiateBookingStateImpl>
    implements _$$AddInitiateBookingStateImplCopyWith<$Res> {
  __$$AddInitiateBookingStateImplCopyWithImpl(
      _$AddInitiateBookingStateImpl _value,
      $Res Function(_$AddInitiateBookingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddInitiateBookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? errorMessage = null,
  }) {
    return _then(_$AddInitiateBookingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InitiateBookingResponse?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddInitiateBookingStateImpl implements _AddInitiateBookingState {
  const _$AddInitiateBookingStateImpl(
      {this.isLoading = false, this.data, this.errorMessage = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final InitiateBookingResponse? data;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'AddInitiateBookingState(isLoading: $isLoading, data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddInitiateBookingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, data, errorMessage);

  /// Create a copy of AddInitiateBookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddInitiateBookingStateImplCopyWith<_$AddInitiateBookingStateImpl>
      get copyWith => __$$AddInitiateBookingStateImplCopyWithImpl<
          _$AddInitiateBookingStateImpl>(this, _$identity);
}

abstract class _AddInitiateBookingState implements AddInitiateBookingState {
  const factory _AddInitiateBookingState(
      {final bool isLoading,
      final InitiateBookingResponse? data,
      final String errorMessage}) = _$AddInitiateBookingStateImpl;

  @override
  bool get isLoading;
  @override
  InitiateBookingResponse? get data;
  @override
  String get errorMessage;

  /// Create a copy of AddInitiateBookingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddInitiateBookingStateImplCopyWith<_$AddInitiateBookingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
