// make shure when ue use freezed to generate our code that we import the freezed_annotation
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/dtos/doctors_filter_dto.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
part 'search_doctor_state.freezed.dart';

enum EnModes { searchMood, defaultMode}
@freezed
class SearchDoctorState with _$SearchDoctorState{
  const factory SearchDoctorState
  ({required DoctorsListState doctorsListState, required SortState sortState}) = _SearchDoctorState;

  factory SearchDoctorState.initial() => 
  SearchDoctorState(doctorsListState: DoctorsListState.initial(), sortState: SortState.initial());
  
}

@freezed
class DoctorsListState with _$DoctorsListState {
  const factory DoctorsListState(
      {
      @Default(false) bool isLoading,
      @Default(false) bool isLoadingMore,
      @Default(false) bool hasMoreData,
      // TextEditingController? searchCtrl,
      DoctorsFilterDto? doctorsFilterDto,
      @Default([]) List<Doctor> data,
      // @Default([]) List<Doctor> flutterDocsList,
      @Default(0) int currentPage,
      @Default('') String errorMessage,
      // ScrollController? scrollCtrl,
      EnModes? mode,
      @Default(0.0) double lastOffset}) = _DoctorsListState;

  factory DoctorsListState.initial() => DoctorsListState(
      // searchCtrl: TextEditingController(), 
      // scrollCtrl: ScrollController(),
      doctorsFilterDto: DoctorsFilterDto(pageNumber: 1, pageSize: 5, orderBy: EnDoctorOverviewOrdering.name, isRecommended: false),
      mode: EnModes.defaultMode
      );
}

@freezed
class SortState with _$SortState {
  const factory SortState(
      {@Default(0) int spIndex,
      @Default(0) int rtIndex,
      @Default(false) bool timeToColor,
      ItemScrollController? spCtrl,
      ItemScrollController? rtCtrl}) = _SortState;

  factory SortState.initial() =>
      SortState(spCtrl: ItemScrollController(), rtCtrl: ItemScrollController());
}
