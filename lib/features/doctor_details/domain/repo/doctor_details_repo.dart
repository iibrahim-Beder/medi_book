import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/core/helpers/base_paginated_entity.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_location.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_profile.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_review.dart';

abstract class DoctorDetailsRepo {
  Future<Either<Failures, DoctorProfile>> getDoctorProfile(int doctorId);
  Future<Either<Failures, List<DoctorLocation>>> getDoctorLocations(int doctorId);
  Future<Either<Failures, BasePaginatedEntity<List<DoctorReview>>>> getDoctorReviews({required int doctorId, required int pageNumber,required int pageSize});
}