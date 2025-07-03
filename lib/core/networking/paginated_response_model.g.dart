// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedResponseModel<T> _$PaginatedResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginatedResponseModel<T>(
      data: fromJsonT(json['data']),
      currentPage: (json['currentPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool,
      hasNextPage: json['hasNextPage'] as bool,
      succeeded: json['succeeded'] as bool,
    );

Map<String, dynamic> _$PaginatedResponseModelToJson<T>(
  PaginatedResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'pageSize': instance.pageSize,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
      'succeeded': instance.succeeded,
    };
