import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/helpers/paginated_state.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:medi_book/features/home/dtos/doctors_filter_dto.dart';

part 'main_home_state.freezed.dart';

enum EnRecDocModes { shimmerLoading, noLoading }

@freezed
class MainHomeState with _$MainHomeState {
  const factory MainHomeState({
    required SpecialtiesState specialtiesState,
    required RecommendedDoctorsState recommendedDoctorsState,
  }) = _MainHomeState;

  factory MainHomeState.initial() => MainHomeState(
        specialtiesState: const SpecialtiesState(),
        recommendedDoctorsState: RecommendedDoctorsState.initial(),
      );
}

@freezed
class SpecialtiesState with _$SpecialtiesState {
  const factory SpecialtiesState({
    @Default(false) bool isLoading,
    @Default([]) List<Speciality> data,
    @Default('') String errorMessage,
  }) = _SpecialtiesState;
}

@freezed
class RecommendedDoctorsState with _$RecommendedDoctorsState {
  const factory RecommendedDoctorsState({
    PaginatedState<Doctor>? paginatedState, 
    DoctorsFilterDto? doctorsFilterDto,
    ScrollController? scrollCtrl,
  }) = _RecommendedDoctorsState;

  factory RecommendedDoctorsState.initial() => RecommendedDoctorsState(
        scrollCtrl: ScrollController(),
        doctorsFilterDto: DoctorsFilterDto(pageNumber: 1, pageSize: 5, orderBy: EnDoctorOverviewOrdering.name, isRecommended: true),
        paginatedState: PaginatedState<Doctor>(),
      );
}
