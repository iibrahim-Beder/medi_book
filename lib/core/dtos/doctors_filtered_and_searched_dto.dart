import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctors_filtered_and_searched_dto.freezed.dart';
part 'doctors_filtered_and_searched_dto.g.dart';

@JsonEnum()
enum EnDoctorOverviewOrdering {
  @JsonValue(1)
  name,

  @JsonValue(2)
  ratingAverage,
}

@JsonEnum()
enum EnDoctorOverviewSearchBy {
  @JsonValue(0)
  none,

  @JsonValue(1)
  name,

  @JsonValue(2)
  ratingAverage,
}

@freezed
class DoctorsFilteredAndSearchedDto with _$DoctorsFilteredAndSearchedDto {
  const factory DoctorsFilteredAndSearchedDto({
    required int pageNumber,
    required int pageSize,
    required EnDoctorOverviewOrdering orderBy,
    EnDoctorOverviewSearchBy? searchBy,
    String? searchValue,
    int? specialtyId,
    int? numberOfRatings,
    bool? isRecommended
  }) = _DoctorsFilteredAndSearchedDto;

  const DoctorsFilteredAndSearchedDto._();
 
  factory DoctorsFilteredAndSearchedDto.fromJson(Map<String, dynamic> json) => _$DoctorsFilteredAndSearchedDtoFromJson(json);
  
}

 