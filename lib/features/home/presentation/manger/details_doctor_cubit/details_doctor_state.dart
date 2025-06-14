import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/helpers/paginated_state.dart';
import 'package:medi_book/features/home/domain/entities/doctor_location.dart';
import 'package:medi_book/features/home/domain/entities/doctor_profile.dart';
import 'package:medi_book/features/home/domain/entities/doctor_review.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';
part 'details_doctor_state.freezed.dart';

@freezed
class DetailsDoctorState with _$DetailsDoctorState {
  const factory DetailsDoctorState({
    required EnDoctorSection selectedSection,
    required int reviewsLastindex,
    required double reviewsAlignment,
    required PaginatedState<DoctorReview> paginatedState,
    required DoctorProfileState doctorProfileState,
    required DoctorLocationsState doctorLocationsState,
    Doctor? doctor
  }) = _DetailsDoctorState;

  factory DetailsDoctorState.initial() => DetailsDoctorState(
        selectedSection: EnDoctorSection.about,
        reviewsLastindex: 0,
        reviewsAlignment: 0.0,
        paginatedState: PaginatedState(),
        doctorProfileState: DoctorProfileState(),
        doctorLocationsState: DoctorLocationsState(),
      );
}


@freezed
class DoctorProfileState with _$DoctorProfileState{

const factory DoctorProfileState({
  @Default(false) bool isLoding,
   DoctorProfile? doctorProfile,
  @Default('') String  errorMessage
}) = _DoctorProfileState;

}

@freezed
class DoctorLocationsState with _$DoctorLocationsState{

const factory DoctorLocationsState({
  @Default(false) bool isLoding,
   List<DoctorLocation>? doctorLocations,
  @Default('') String  errorMessage
}) = _DoctorLocationsState;

}

