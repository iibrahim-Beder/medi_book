// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedState<T> {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get hasMoreData => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedStateCopyWith<T, PaginatedState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedStateCopyWith<T, $Res> {
  factory $PaginatedStateCopyWith(
          PaginatedState<T> value, $Res Function(PaginatedState<T>) then) =
      _$PaginatedStateCopyWithImpl<T, $Res, PaginatedState<T>>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      bool hasMoreData,
      String errorMessage,
      int currentPage,
      List<T> data});
}

/// @nodoc
class _$PaginatedStateCopyWithImpl<T, $Res, $Val extends PaginatedState<T>>
    implements $PaginatedStateCopyWith<T, $Res> {
  _$PaginatedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasMoreData = null,
    Object? errorMessage = null,
    Object? currentPage = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedStateImplCopyWith<T, $Res>
    implements $PaginatedStateCopyWith<T, $Res> {
  factory _$$PaginatedStateImplCopyWith(_$PaginatedStateImpl<T> value,
          $Res Function(_$PaginatedStateImpl<T>) then) =
      __$$PaginatedStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      bool hasMoreData,
      String errorMessage,
      int currentPage,
      List<T> data});
}

/// @nodoc
class __$$PaginatedStateImplCopyWithImpl<T, $Res>
    extends _$PaginatedStateCopyWithImpl<T, $Res, _$PaginatedStateImpl<T>>
    implements _$$PaginatedStateImplCopyWith<T, $Res> {
  __$$PaginatedStateImplCopyWithImpl(_$PaginatedStateImpl<T> _value,
      $Res Function(_$PaginatedStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasMoreData = null,
    Object? errorMessage = null,
    Object? currentPage = null,
    Object? data = null,
  }) {
    return _then(_$PaginatedStateImpl<T>(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$PaginatedStateImpl<T> implements _PaginatedState<T> {
  const _$PaginatedStateImpl(
      {this.isLoading = false,
      this.isLoadingMore = false,
      this.hasMoreData = false,
      this.errorMessage = '',
      this.currentPage = 0,
      final List<T> data = const []})
      : _data = data;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasMoreData;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final int currentPage;
  final List<T> _data;
  @override
  @JsonKey()
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PaginatedState<$T>(isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasMoreData: $hasMoreData, errorMessage: $errorMessage, currentPage: $currentPage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedStateImpl<T> &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasMoreData, hasMoreData) ||
                other.hasMoreData == hasMoreData) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLoadingMore,
      hasMoreData,
      errorMessage,
      currentPage,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedStateImplCopyWith<T, _$PaginatedStateImpl<T>> get copyWith =>
      __$$PaginatedStateImplCopyWithImpl<T, _$PaginatedStateImpl<T>>(
          this, _$identity);
}

abstract class _PaginatedState<T> implements PaginatedState<T> {
  const factory _PaginatedState(
      {final bool isLoading,
      final bool isLoadingMore,
      final bool hasMoreData,
      final String errorMessage,
      final int currentPage,
      final List<T> data}) = _$PaginatedStateImpl<T>;

  @override
  bool get isLoading;
  @override
  bool get isLoadingMore;
  @override
  bool get hasMoreData;
  @override
  String get errorMessage;
  @override
  int get currentPage;
  @override
  List<T> get data;

  /// Create a copy of PaginatedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedStateImplCopyWith<T, _$PaginatedStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
