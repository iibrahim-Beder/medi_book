import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';

part 'main_home_state.freezed.dart';

enum EnRecDocModes { shimmerLoading, loadingIndicator, noLoading }

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
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasMoreData,
    @Default(1) int currentPage,
    @Default(5) int pageSize,
    @Default([]) List<Doctor> data,
    @Default('') String errorMessage,
    @Default(false) bool isHasJumped,
    ScrollController? scrollCtrl,
  }) = _RecommendedDoctorsState;

  factory RecommendedDoctorsState.initial() => RecommendedDoctorsState(
        scrollCtrl: ScrollController(),
      );
}
