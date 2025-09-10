import 'package:medi_book/features/doctor_details/data/models/doctor_profile_model.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_profile.dart';

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
