class DoctorProfile {
  final int yearsOfExperience;
  final String licenceNumber;
  final String bio;
  final String? languagesSpoken;
  final String workingTime;
  final int practiceStartYear;

  DoctorProfile({
    required this.yearsOfExperience,
    required this.licenceNumber,
    required this.bio,
    this.languagesSpoken,
    required this.workingTime, 
    required this.practiceStartYear,
  });
}
