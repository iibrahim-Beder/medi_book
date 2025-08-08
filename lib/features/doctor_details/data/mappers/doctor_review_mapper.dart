import 'package:medi_book/features/doctor_details/data/models/doctor_review_model.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_review.dart';

extension DoctorReviewMapper on DoctorReviewModel {
  DoctorReview toEntity(String baseUrl) {
    return DoctorReview(
      reviewID: reviewID,
      patientName: patientName,
      rating: rating,
      comment: comment,
      dateOfReview: dateOfReview,
      patientImagePath: "$baseUrl/$patientImagePath",
    );
  }
}

extension DoctorReviewListMapper on List<DoctorReviewModel> {
  List<DoctorReview> toEntity(String baseUrl) {
    return map((e) => e.toEntity(baseUrl)).toList();
  }
}
