import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/networking/api_constants.dart';
import 'package:medi_book/features/home/data/mappers/get_paginated_doctors_mapper.dart';
import 'package:medi_book/features/home/data/mappers/specialty_model_mapper.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/home/networking/home_api_service.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeApiService _apiService;
  HomeRepoImpl(this._apiService);
  @override
  Future<Either<Failures, List<Speciality>>> getSpecialties() async {
    try {
      var response = await _apiService.getSpecialties();
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
  Future<Either<Failures, PaginatedDoctors>> getPaginatedDoctors(
      int pageNumber, int pageSize) async {
    try {
      var response =
          await _apiService.getPaginatedDoctors(pageNumber, pageSize);
      PaginatedDoctors paginatedDoctors = response.toEntity(
          baseUrl: ApiConstants.baseUrl.replaceAll('/Api/v1', ''));

      return right(paginatedDoctors);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDiorError(error));
      } else {
        return left(ServerFailure(error.toString()));
      }
    }
  }
}
