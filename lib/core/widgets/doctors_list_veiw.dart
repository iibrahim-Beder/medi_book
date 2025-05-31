import 'package:flutter/material.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw_default_mode.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw_search_mood.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/enums/en_modes.dart';

class DoctorsListVeiw extends StatelessWidget {
  DoctorsListVeiw(
      {super.key,
      required this.isHasPadding,
      required this.doctorsList,
      required this.flutterDoctorsList,
      required this.mode, required this.isHasShimmerLoading});

  final bool isHasPadding;
  final List<Doctor> doctorsList;
  final List<Doctor> flutterDoctorsList;
  final bool isHasShimmerLoading;

  Enum mode;
  @override
  Widget build(BuildContext context) {
    switch (mode) {
      case EnModes.defaultMode:
        return DoctorsListVeiwDefaultMode(isHasPadding: isHasPadding, doctorsList: doctorsList, isHasShimmerLoading: isHasShimmerLoading,);
      case EnModes.searchMood:
        return DoctorsListVeiwSearchMood(
            isHasPadding: isHasPadding, filterDoctorsList: flutterDoctorsList);
      default:
        return SliverToBoxAdapter(child: Container());
    }
  }
}
