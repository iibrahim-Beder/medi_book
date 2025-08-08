// make shure when ue use freezed to generate our code that we import the freezed_annotation
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/helpers/paginated_state.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/dtos/doctors_filter_dto.dart';
part 'search_doctor_state.freezed.dart';

enum EnModes { searchMood, defaultMode }

@freezed
class SearchDoctorState with _$SearchDoctorState {
  const factory SearchDoctorState(
      {required DoctorsListState doctorsListState,
      required SortState sortState}) = _SearchDoctorState;

  factory SearchDoctorState.initial() => SearchDoctorState(
      doctorsListState: DoctorsListState.initial(),
      sortState: SortState());
}

@freezed
class DoctorsListState with _$DoctorsListState {
  const factory DoctorsListState(
      {DoctorsFilterDto? doctorsFilterDto,
      required PaginatedState<Doctor> doctorPaginatedState,
      EnModes? mode,
      @Default(0.0) double lastOffset}) = _DoctorsListState;

  factory DoctorsListState.initial() => DoctorsListState(
      doctorsFilterDto: DoctorsFilterDto(
          pageNumber: 1,
          pageSize: 5,
          orderBy: EnDoctorOverviewOrdering.name,
          isRecommended: false),
      mode: EnModes.defaultMode,
      doctorPaginatedState: PaginatedState());
}

@freezed
class SortState with _$SortState {
  const factory SortState(
      {@Default(0) int spIndex,
      @Default(0) int rtIndex,}) = _SortState;
}
