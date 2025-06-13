// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorsFilterDtoImpl _$$DoctorsFilterDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorsFilterDtoImpl(
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      orderBy: $enumDecode(_$EnDoctorOverviewOrderingEnumMap, json['orderBy']),
      searchBy: $enumDecodeNullable(
          _$EnDoctorOverviewSearchByEnumMap, json['searchBy']),
      searchValue: json['searchValue'] as String?,
      specialtyId: (json['specialtyId'] as num?)?.toInt(),
      numberOfRatings: (json['numberOfRatings'] as num?)?.toInt(),
      isRecommended: json['isRecommended'] as bool?,
    );

Map<String, dynamic> _$$DoctorsFilterDtoImplToJson(
        _$DoctorsFilterDtoImpl instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'orderBy': _$EnDoctorOverviewOrderingEnumMap[instance.orderBy]!,
      'searchBy': _$EnDoctorOverviewSearchByEnumMap[instance.searchBy],
      'searchValue': instance.searchValue,
      'specialtyId': instance.specialtyId,
      'numberOfRatings': instance.numberOfRatings,
      'isRecommended': instance.isRecommended,
    };

const _$EnDoctorOverviewOrderingEnumMap = {
  EnDoctorOverviewOrdering.name: 1,
  EnDoctorOverviewOrdering.ratingAverage: 2,
};

const _$EnDoctorOverviewSearchByEnumMap = {
  EnDoctorOverviewSearchBy.none: 0,
  EnDoctorOverviewSearchBy.name: 1,
  EnDoctorOverviewSearchBy.ratingAverage: 2,
};
