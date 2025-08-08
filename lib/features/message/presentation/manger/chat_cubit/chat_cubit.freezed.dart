// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  Mode get mode => throw _privateConstructorUsedError;
  bool get hasPermission => throw _privateConstructorUsedError;
  Duration get recordingDuration =>
      throw _privateConstructorUsedError; // Current session
  Duration get totalRecordingDuration =>
      throw _privateConstructorUsedError; // Accumulated across sessions
  String? get recordingPath => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {Mode mode,
      bool hasPermission,
      Duration recordingDuration,
      Duration totalRecordingDuration,
      String? recordingPath});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? hasPermission = null,
    Object? recordingDuration = null,
    Object? totalRecordingDuration = null,
    Object? recordingPath = freezed,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
      hasPermission: null == hasPermission
          ? _value.hasPermission
          : hasPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      recordingDuration: null == recordingDuration
          ? _value.recordingDuration
          : recordingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      totalRecordingDuration: null == totalRecordingDuration
          ? _value.totalRecordingDuration
          : totalRecordingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      recordingPath: freezed == recordingPath
          ? _value.recordingPath
          : recordingPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Mode mode,
      bool hasPermission,
      Duration recordingDuration,
      Duration totalRecordingDuration,
      String? recordingPath});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? hasPermission = null,
    Object? recordingDuration = null,
    Object? totalRecordingDuration = null,
    Object? recordingPath = freezed,
  }) {
    return _then(_$ChatStateImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
      hasPermission: null == hasPermission
          ? _value.hasPermission
          : hasPermission // ignore: cast_nullable_to_non_nullable
              as bool,
      recordingDuration: null == recordingDuration
          ? _value.recordingDuration
          : recordingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      totalRecordingDuration: null == totalRecordingDuration
          ? _value.totalRecordingDuration
          : totalRecordingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      recordingPath: freezed == recordingPath
          ? _value.recordingPath
          : recordingPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl with DiagnosticableTreeMixin implements _ChatState {
  const _$ChatStateImpl(
      {required this.mode,
      required this.hasPermission,
      required this.recordingDuration,
      required this.totalRecordingDuration,
      this.recordingPath});

  @override
  final Mode mode;
  @override
  final bool hasPermission;
  @override
  final Duration recordingDuration;
// Current session
  @override
  final Duration totalRecordingDuration;
// Accumulated across sessions
  @override
  final String? recordingPath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState(mode: $mode, hasPermission: $hasPermission, recordingDuration: $recordingDuration, totalRecordingDuration: $totalRecordingDuration, recordingPath: $recordingPath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState'))
      ..add(DiagnosticsProperty('mode', mode))
      ..add(DiagnosticsProperty('hasPermission', hasPermission))
      ..add(DiagnosticsProperty('recordingDuration', recordingDuration))
      ..add(
          DiagnosticsProperty('totalRecordingDuration', totalRecordingDuration))
      ..add(DiagnosticsProperty('recordingPath', recordingPath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.hasPermission, hasPermission) ||
                other.hasPermission == hasPermission) &&
            (identical(other.recordingDuration, recordingDuration) ||
                other.recordingDuration == recordingDuration) &&
            (identical(other.totalRecordingDuration, totalRecordingDuration) ||
                other.totalRecordingDuration == totalRecordingDuration) &&
            (identical(other.recordingPath, recordingPath) ||
                other.recordingPath == recordingPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, hasPermission,
      recordingDuration, totalRecordingDuration, recordingPath);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final Mode mode,
      required final bool hasPermission,
      required final Duration recordingDuration,
      required final Duration totalRecordingDuration,
      final String? recordingPath}) = _$ChatStateImpl;

  @override
  Mode get mode;
  @override
  bool get hasPermission;
  @override
  Duration get recordingDuration; // Current session
  @override
  Duration get totalRecordingDuration; // Accumulated across sessions
  @override
  String? get recordingPath;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
