import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/coustom_Image_box.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw.dart';

class SearchDoctorScreenBody extends StatefulWidget {
  SearchDoctorScreenBody({super.key});
  @override
  State<SearchDoctorScreenBody> createState() => _SearchDoctorScreenBodyState();
}

class _SearchDoctorScreenBodyState extends State<SearchDoctorScreenBody> {
   
   List<DoctorInfo> flutterDoctorsList = [];
   final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        CustomAppBarWithSearch(
          title: 'Recommendation Doctors',
          widgetBox: CoustomImageBox(
            svgPath: "assets/svgs/more_vert.svg",
            borderColor: ColorsManager.neutral40,
          ),
          svgPathForTHeSecondRow: "assets/svgs/sort.svg",
          onWidgetBoxTap: () {},
          onChanged: searchOperation,
          searchController: searchController,
        ),
        DoctorsListVeiw(
          isHasPadding: true,
          flutterDoctorsList: flutterDoctorsList,
          searchController: searchController
        ),
      ],
    ));
  }
  void searchOperation(String newValue) {
  setState(() {
    final query = newValue.toLowerCase();

    flutterDoctorsList = doctorsList.where((doctor) {
      final name = doctor.name?.toLowerCase() ?? '';
      return name.contains(query);
    }).toList();
  });
}
}
