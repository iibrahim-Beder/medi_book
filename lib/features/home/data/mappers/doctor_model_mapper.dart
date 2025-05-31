import 'package:medi_book/features/home/data/models/doctor_model.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';

extension DoctorModelMapper on DoctorModel {
  Doctor toEntity(String baseUrl) {
    return Doctor(
      id: doctorID,
      firstName: firstName,
      lastName: lastName,
      spiciality: spicialityName,
      location: locationName,
      rating: ratingAverage,
      numberOfReviews: numberOfReviews,
      imageUrl: "$baseUrl/$imagePath",
    );
  }
}
