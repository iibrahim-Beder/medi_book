import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/coustom_Image_box.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw.dart';
import 'package:medi_book/core/widgets/search/search_bottom_sheet_body.dart';

class SearchDoctorScreenBody extends StatefulWidget {
  SearchDoctorScreenBody({super.key});
  @override
  State<SearchDoctorScreenBody> createState() => _SearchDoctorScreenBodyState();
}

class _SearchDoctorScreenBodyState extends State<SearchDoctorScreenBody> {
  List<DoctorInfo> flutterDoctorsList = [];
  final TextEditingController searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    EnModes mode = searchController.text.isEmpty
        ? EnModes.defaultMode
        : EnModes.searchMood;
    return SafeArea(
        child: CustomScrollView(
      controller:
          mode == EnModes.defaultMode ? ScrollController() : _scrollController,
      slivers: [
        CustomAppBarWithSearch(
          title: 'Recommendation Doctors',
          widgetBox: CoustomImageBox(
            svgPath: "assets/svgs/more_vert.svg",
            borderColor: ColorsManager.neutral40,
          ),
          svgPathForTHeSecondRow: "assets/svgs/sort.svg",
          onWidgetBoxTap: () {
            showSearchOptions(context);
          },
          onChanged: searchOperation,
          searchController: searchController,
        ),
        DoctorsListVeiw(
          isHasPadding: true,
          flutterDoctorsList: flutterDoctorsList,
          mode: mode,
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
      if (searchController.text.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        });
      }
    });
  }

  void showSearchOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return const SearchBottomSheetBody();
      },
    );
  }
}
