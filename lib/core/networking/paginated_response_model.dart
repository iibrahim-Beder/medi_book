import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/helpers/base_paginated_entity.dart';
part 'paginated_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginatedResponseModel<T> {
  final T data;
  final int currentPage;
  final int totalPages;
  final int totalCount;
  final int pageSize;
  final bool hasPreviousPage;
  final bool hasNextPage;
  final bool succeeded;

  PaginatedResponseModel({
    required this.data,
    required this.currentPage,
    required this.totalPages,
    required this.totalCount,
    required this.pageSize,
    required this.hasPreviousPage,
    required this.hasNextPage,
    required this.succeeded,
  });

  factory PaginatedResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginatedResponseModelFromJson(json, fromJsonT);
}


extension PaginatedResponseModelMapper<T> on PaginatedResponseModel<T> {
  BasePaginatedEntity<T> toEntity() => BasePaginatedEntity<T>(
        data: data,
        currentPage: currentPage,
        totalPages: totalPages,
        totalCount: totalCount,
        pageSize: pageSize,
        hasPreviousPage: hasPreviousPage,
        hasNextPage: hasNextPage,
        succeeded: succeeded,
      );
}