// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appNotification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppNotification {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get readAt => throw _privateConstructorUsedError;
  String get svgUrl => throw _privateConstructorUsedError;
  String? get target => throw _privateConstructorUsedError;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
          AppNotification value, $Res Function(AppNotification) then) =
      _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call(
      {int id,
      String type,
      String title,
      String message,
      bool isRead,
      DateTime createdAt,
      DateTime? readAt,
      String svgUrl,
      String? target});
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? message = null,
    Object? isRead = null,
    Object? createdAt = null,
    Object? readAt = freezed,
    Object? svgUrl = null,
    Object? target = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      svgUrl: null == svgUrl
          ? _value.svgUrl
          : svgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppnotificationImplCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$AppnotificationImplCopyWith(_$AppnotificationImpl value,
          $Res Function(_$AppnotificationImpl) then) =
      __$$AppnotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      String title,
      String message,
      bool isRead,
      DateTime createdAt,
      DateTime? readAt,
      String svgUrl,
      String? target});
}

/// @nodoc
class __$$AppnotificationImplCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$AppnotificationImpl>
    implements _$$AppnotificationImplCopyWith<$Res> {
  __$$AppnotificationImplCopyWithImpl(
      _$AppnotificationImpl _value, $Res Function(_$AppnotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? message = null,
    Object? isRead = null,
    Object? createdAt = null,
    Object? readAt = freezed,
    Object? svgUrl = null,
    Object? target = freezed,
  }) {
    return _then(_$AppnotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      svgUrl: null == svgUrl
          ? _value.svgUrl
          : svgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppnotificationImpl implements _Appnotification {
  const _$AppnotificationImpl(
      {required this.id,
      required this.type,
      required this.title,
      required this.message,
      required this.isRead,
      required this.createdAt,
      this.readAt,
      required this.svgUrl,
      this.target});

  @override
  final int id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String message;
  @override
  final bool isRead;
  @override
  final DateTime createdAt;
  @override
  final DateTime? readAt;
  @override
  final String svgUrl;
  @override
  final String? target;

  @override
  String toString() {
    return 'AppNotification(id: $id, type: $type, title: $title, message: $message, isRead: $isRead, createdAt: $createdAt, readAt: $readAt, svgUrl: $svgUrl, target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppnotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.svgUrl, svgUrl) || other.svgUrl == svgUrl) &&
            (identical(other.target, target) || other.target == target));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, title, message, isRead,
      createdAt, readAt, svgUrl, target);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppnotificationImplCopyWith<_$AppnotificationImpl> get copyWith =>
      __$$AppnotificationImplCopyWithImpl<_$AppnotificationImpl>(
          this, _$identity);
}

abstract class _Appnotification implements AppNotification {
  const factory _Appnotification(
      {required final int id,
      required final String type,
      required final String title,
      required final String message,
      required final bool isRead,
      required final DateTime createdAt,
      final DateTime? readAt,
      required final String svgUrl,
      final String? target}) = _$AppnotificationImpl;

  @override
  int get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get message;
  @override
  bool get isRead;
  @override
  DateTime get createdAt;
  @override
  DateTime? get readAt;
  @override
  String get svgUrl;
  @override
  String? get target;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppnotificationImplCopyWith<_$AppnotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
