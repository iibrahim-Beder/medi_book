import 'package:medi_book/features/home/data/models/doctor_profile_model.dart';
import 'package:medi_book/features/home/domain/entities/doctor_profile.dart';

extension DoctorProfileMapper on DoctorProfileModel {
  DoctorProfile toEntity() {
    return DoctorProfile(
      yearsOfExperience: yearsOfExperience,
      practiceStartYear: practiceStartYear,
      licenceNumber: licenceNumber,
      bio: bio,
      languagesSpoken: languagesSpoken,
      workingTime: workingTime,
    );
  }
}
