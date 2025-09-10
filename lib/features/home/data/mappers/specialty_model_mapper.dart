import 'package:medi_book/features/home/data/models/specialty_model.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';

extension SpecialtyModelMapper on SpecialtyModel {
  Speciality toEntity({required String baseUrl}) {
    {
      return Speciality(
        id: id,
        name: name,
        imageUrl: "$baseUrl$imagePath",
      );
    }
  }
}
