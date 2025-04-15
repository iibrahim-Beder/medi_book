import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/errors/failures.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(Failures failures) = Failure<T>;
}
