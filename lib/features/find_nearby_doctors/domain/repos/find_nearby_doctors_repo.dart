
import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/response/cell_locations_with_doctors.dart';
import 'package:medi_book/features/home/dtos/doctors_filter_dto.dart';

abstract class FindNearbyDoctorsRepo {

  Future<Either<Failures, List<CellLocationsWithDoctors>>> getFilteredLocationsWithDoctors(DoctorsFilterDto doctorsFilterDto);

}