import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/helpers/base_paginated_entity.dart';
import 'package:medi_book/features/home/domain/entities/doctor_location.dart';
import 'package:medi_book/features/home/domain/entities/doctor_profile.dart';
import 'package:medi_book/features/home/domain/entities/doctor_review.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:medi_book/features/home/dtos/doctors_filter_dto.dart';

abstract class HomeRepo {
  
  Future<Either<Failures, List<Speciality>>> getSpecialties();
  Future<Either<Failures, BasePaginatedEntity<List<Doctor>>>> getFilteredDoctors(DoctorsFilterDto doctorsFilterDto);
  Future<Either<Failures, DoctorProfile>> getDoctorProfile(int doctorId);
  Future<Either<Failures, List<DoctorLocation>>> getDoctorLocations(int doctorId);
  Future<Either<Failures, BasePaginatedEntity<List<DoctorReview>>>> getDoctorReviews({required int doctorId, required int pageNumber,required int pageSize});
  
}