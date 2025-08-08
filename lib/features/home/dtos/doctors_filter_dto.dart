
import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctors_filter_dto.freezed.dart';
part 'doctors_filter_dto.g.dart';

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
class DoctorsFilterDto with _$DoctorsFilterDto {
  const factory DoctorsFilterDto({
    required int pageNumber,
    required int pageSize,
    required EnDoctorOverviewOrdering orderBy,
    EnDoctorOverviewSearchBy? searchBy,
    String? searchValue,
    int? specialtyId,
    int? numberOfRatings,
    bool? isRecommended
  }) = _DoctorsFilterDto;

  const DoctorsFilterDto._();
 
  factory DoctorsFilterDto.fromJson(Map<String, dynamic> json) => _$DoctorsFilterDtoFromJson(json);
  
}

 
