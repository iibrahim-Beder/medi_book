import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/helpers/base_paginated_entity.dart';
import 'package:medi_book/core/networking/api_constants.dart';
import 'package:medi_book/core/networking/paginated_response_model.dart';
import 'package:medi_book/features/home/data/mappers/doctor_model_mapper.dart';
import 'package:medi_book/features/home/data/mappers/specialty_model_mapper.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/home/dtos/doctors_filter_dto.dart';
import 'package:medi_book/features/home/networking/home_api_service.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeApiService _apiService;
  HomeRepoImpl(this._apiService);
  @override
  Future<Either<Failures, List<Speciality>>> getSpecialties() async {
    try {
      var response = await _apiService.getSpecialties();
      // this should be refactored to be extintion method to be more readable
      List<Speciality> specialties = response.data
          .map((e) => e.toEntity(
              baseUrl: ApiConstants.baseUrl.replaceAll('/Api/v1', '')))
          .toList();
      return right(specialties);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, BasePaginatedEntity<List<Doctor>>>>
      getFilteredDoctors(DoctorsFilterDto doctorsFilterDto) async {
    try {
      var response =
          await _apiService.getPaginatedDoctors(doctorsFilterDto.toJson());

      var mapperDoctors = response.data
          .toEntity(ApiConstants.baseUrl.replaceAll('/Api/v1', ''));
      var mapperPaginated =
          _mapDoctorsPaginatedResponse(response, mapperDoctors);

      return right(mapperPaginated);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }

  BasePaginatedEntity<List<Doctor>> _mapDoctorsPaginatedResponse(
    PaginatedResponseModel response,
    List<Doctor> doctors,
  ) {
    return BasePaginatedEntity<List<Doctor>>(
      data: doctors,
      currentPage: response.currentPage,
      totalPages: response.totalPages,
      totalCount: response.totalCount,
      pageSize: response.pageSize,
      hasPreviousPage: response.hasPreviousPage,
      hasNextPage: response.hasNextPage,
      succeeded: response.succeeded,
    );
  }



}
