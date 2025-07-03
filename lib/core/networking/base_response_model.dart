import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseModel<T> {
  final String statusCode;
  final bool succeeded;
  final String? message;
  final T data;

  BaseResponseModel({
    required this.statusCode,
    required this.succeeded,
    this.message,
    required this.data,
  });

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseModelFromJson(json, fromJsonT);
}