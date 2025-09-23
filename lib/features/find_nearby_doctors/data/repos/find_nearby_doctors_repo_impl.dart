import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/networking/api_constants.dart';
import 'package:medi_book/features/find_nearby_doctors/data/mapper/cell_locations_with_doctors_model_mapper.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/response/cell_locations_with_doctors.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/repos/find_nearby_doctors_repo.dart';
import 'package:medi_book/features/find_nearby_doctors/networking/find_nearby_doctors_api_service.dart';
import 'package:medi_book/features/home/dtos/doctors_filter_dto.dart';

class FindNearbyDoctorsRepoImpl extends FindNearbyDoctorsRepo {
  FindNearbyDoctorsApiService _findNearbyDoctorsApiService;
  FindNearbyDoctorsRepoImpl(this._findNearbyDoctorsApiService);

  @override
  Future<Either<Failures, List<CellLocationsWithDoctors>>>
      getFilteredLocationsWithDoctors(DoctorsFilterDto doctorsFilterDto) async {
    try {
      var response = await _findNearbyDoctorsApiService.findNearbyDoctors();
      var mapperDoctors = response.data.toEntityList(ApiConstants.baseUrl.replaceAll('/Api/v1', ''));

      return Right(mapperDoctors);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
