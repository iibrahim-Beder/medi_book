import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/helpers/base_paginated_entity.dart';

 void handlePaginatedResult<T>(
  Either<Failures, BasePaginatedEntity<T>> result, {
  required void Function(BasePaginatedEntity<T> data) onSuccess,
  required void Function(String message) onError,
}) {
  result.fold(
    (failure) => onError(failure.message),
    (data) => onSuccess(data),
  );
}

void handleResult<T>(
  Either<Failures, T> result, {
  required void Function(T data) onSuccess,
  required void Function(String message) onError,
}) {
  result.fold(
    (failure) => onError(failure.message),
    (data) => onSuccess(data),
  );
}