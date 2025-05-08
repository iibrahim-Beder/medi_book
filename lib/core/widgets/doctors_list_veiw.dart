import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/helpers/doctors_list.dart' as DoctorsList;
import 'package:medi_book/core/widgets/doctors_list_veiw_default_mode.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw_search_mood.dart';

enum EnModes { searchMood, defaultMode }

class DoctorsListVeiw extends StatelessWidget {
  DoctorsListVeiw(
      {super.key,
      this.isHasPadding = false,
      this.flutterDoctorsList = const [],
      this.mode = EnModes.defaultMode});

  final bool isHasPadding;

  final List<DoctorInfo> doctorsList = DoctorsList.doctorsList;
  final List<DoctorInfo> flutterDoctorsList;

  Enum mode;
  @override
  Widget build(BuildContext context) {
    switch (mode) {
      case EnModes.defaultMode:
        return DoctorsListVeiwDefaultMode(isHasPadding: isHasPadding);
      case EnModes.searchMood:
        return DoctorsListVeiwSearchMood(
            isHasPadding: isHasPadding, filterDoctorsList: flutterDoctorsList);
      default:
        return SliverToBoxAdapter(child: Container());
    }
  }
}


