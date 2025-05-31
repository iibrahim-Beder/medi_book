import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';

abstract class HomeRepo {
  
  Future<Either<Failures, List<Speciality>>> getSpecialties();
  Future<Either<Failures, PaginatedDoctors>> getPaginatedDoctors(int pageNumber, int pageSize);
  // Future<Either<Failures, PaginatedDoctors>> searchDoctors(String query);
  // Future<Either<Failures, PaginatedDoctors>> getRecommendedDoctors();
  // Future<Either<Failures, PaginatedDoctors>> getDoctorsBySpeciality(String speciality);
  
}