class DoctorReview {
  final int reviewID;
  final String patientName;
  final int rating;
  final String comment;
  final DateTime dateOfReview;
  final String? patientImagePath;

  const DoctorReview({
    required this.reviewID,
    required this.patientName,
    required this.rating,
    required this.comment,
    required this.dateOfReview,
    this.patientImagePath,
  });
}
