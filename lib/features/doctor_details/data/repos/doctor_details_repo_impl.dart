import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/helpers/base_paginated_entity.dart';
import 'package:medi_book/core/networking/api_constants.dart';
import 'package:medi_book/core/networking/paginated_response_model.dart';
import 'package:medi_book/features/doctor_details/data/mappers/doctor_location_mapper.dart';
import 'package:medi_book/features/doctor_details/data/mappers/doctor_profile_mapper.dart';
import 'package:medi_book/features/doctor_details/data/mappers/doctor_review_mapper.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_location.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_profile.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_review.dart';
import 'package:medi_book/features/doctor_details/domain/repo/doctor_details_repo.dart';
import 'package:medi_book/features/doctor_details/networking/doctor_details_api_service.dart';

class DoctorDetailsRepoImpl extends DoctorDetailsRepo {
  final DoctorDetailsApiService _apiService;

  DoctorDetailsRepoImpl(this._apiService);

  BasePaginatedEntity<List<DoctorReview>> _mapDoctorReviewsPaginatedResponse(
    PaginatedResponseModel response,
    List<DoctorReview> doctorReviews,
  ) {
    return BasePaginatedEntity<List<DoctorReview>>(
      data: doctorReviews,
      currentPage: response.currentPage,
      totalPages: response.totalPages,
      totalCount: response.totalCount,
      pageSize: response.pageSize,
      hasPreviousPage: response.hasPreviousPage,
      hasNextPage: response.hasNextPage,
      succeeded: response.succeeded,
    );
  }

  @override
  Future<Either<Failures, DoctorProfile>> getDoctorProfile(int doctorId) async {
    try {
      var response = await _apiService.getDoctorProfile(doctorId);
      return right(response.toEntity());
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<DoctorLocation>>> getDoctorLocations(
      int doctorId) async {
    try {
      var response = await _apiService.getDoctorLocations(doctorId);

      return right(response.data.toEntityList());
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, BasePaginatedEntity<List<DoctorReview>>>>
      getDoctorReviews(
          {required int doctorId,
          required int pageNumber,
          required int pageSize}) async {
    try {
      var response =
          await _apiService.getDoctorReviews(doctorId, pageNumber, pageSize);

      var mapperDoctors = response.data
          .toEntity(ApiConstants.baseUrl.replaceAll('/Api/v1', ''));
      var mapperPaginated =
          _mapDoctorReviewsPaginatedResponse(response, mapperDoctors);

      return right(mapperPaginated);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }
}
