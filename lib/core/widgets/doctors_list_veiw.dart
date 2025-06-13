import 'package:flutter/material.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw_default_mode.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_state.dart';

class DoctorsListVeiw extends StatelessWidget {
  DoctorsListVeiw(
      {super.key,
      required this.isHasPadding,
      required this.doctorsList,
      required this.mode, required this.isHasShimmerLoading});

  final bool isHasPadding;
  final List<Doctor> doctorsList;
  final bool isHasShimmerLoading;

  Enum mode;
  @override
  Widget build(BuildContext context) {
    switch (mode) {
      case EnModes.defaultMode:
        return DoctorsListVeiwDefaultMode(isHasPadding: isHasPadding, doctorsList: doctorsList, isHasShimmerLoading: isHasShimmerLoading,);
      case EnModes.searchMood:
        // return DoctorsListVeiwSearchMood(
        //     isHasPadding: isHasPadding, filterDoctorsList: flutterDoctorsList);
        return DoctorsListVeiwDefaultMode(isHasPadding: isHasPadding, doctorsList: doctorsList, isHasShimmerLoading: isHasShimmerLoading,);

      default:
        return SliverToBoxAdapter(child: Container());
    }
  }
}
