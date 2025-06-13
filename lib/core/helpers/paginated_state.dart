import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_state.freezed.dart';

@freezed
class PaginatedState<T> with _$PaginatedState<T> {
  const factory PaginatedState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasMoreData,
    @Default('') String errorMessage,
    @Default(0) int currentPage,
    @Default([]) List<T> data,
  }) = _PaginatedState;
}