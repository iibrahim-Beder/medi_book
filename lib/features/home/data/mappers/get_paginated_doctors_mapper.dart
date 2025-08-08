import 'package:medi_book/features/home/data/mappers/doctor_model_mapper.dart';
import 'package:medi_book/features/home/data/models/get_doctors_model.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';

// extension GetDoctorsMapper on GetPaginatedDoctorsModel {
//   PaginatedDoctors toEntity({required String baseUrl}) {
//     return PaginatedDoctors(
//       doctors: data.map((doctorModel) => doctorModel.toEntity(baseUrl)).toList(),
//       currentPage: currentPage,
//       totalPages: totalPages,
//       totalCount: totalCount,
//       pageSize: pageSize,
//       hasPreviousPage: hasPreviousPage,
//       hasNextPage: hasNextPage,
//       succeeded: succeeded,
//     );
//   }
// }