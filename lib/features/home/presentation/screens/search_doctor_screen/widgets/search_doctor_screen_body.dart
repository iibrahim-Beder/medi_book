import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/list_view/jump_to_last_offset.dart';
import 'package:medi_book/core/helpers/list_view/jump_to_the_end_list.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/core/widgets/doctors_list_veiw.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/controllers/doctors_ctrl.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/enums/en_modes.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/screens/search_doctor_screen/helpers.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/widget_box.dart';
  
  
class SearchDoctorScreenBody extends StatefulWidget {
  SearchDoctorScreenBody({super.key});
  @override
  State<SearchDoctorScreenBody> createState() => _SearchDoctorScreenBodyState();
}

class _SearchDoctorScreenBodyState extends State<SearchDoctorScreenBody> {

  late DoctorsCtrl _doctorsCtrl;

  late EnModes _mode;

  @override
  void initState() {
    super.initState();
    
    // loading data from cubit
    _doctorsCtrl = context.read<SearchDoctorCubit>().doctorsCtrl;


    // select the mode when returning from another screen
    _mode = _doctorsCtrl.searchCtrl.text.isEmpty
        ? EnModes.defaultMode : EnModes.searchMood;

    // select the behivior when returning from another screen depending on the mode
    _mode == EnModes.searchMood
        ? jumpToTheEndList(_doctorsCtrl.scrollCtrl)
        : jumpToLastOffset(
            _doctorsCtrl.lastOffset, _doctorsCtrl.scrollCtrl);

    // adding listener to the scroll controller to be ubdated with its last offset so we can use it for backing to the last offset
    _doctorsCtrl.scrollCtrl.addListener(() {
      _doctorsCtrl.lastOffset =
          _doctorsCtrl.scrollCtrl.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      controller: _doctorsCtrl.scrollCtrl,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        CustomAppBarForSearch(
          title: 'Recommendation Doctors',
          widgetBox: WidgetBox(),
          svgPathForTHeSecondRow: "assets/svgs/sort.svg",
          onWidgetBoxTap: () {
            showSearchOptionsBottomSheet(context);
          },
          onChanged: refreshFunction,
          searchController: _doctorsCtrl.searchCtrl,
        ),
        // DoctorsListVeiw(
        //   isHasPadding: true,
        //   flutterDoctorsList: _doctorsCtrl.flutterDocsList,
        //   mode: _mode,
        // ),
      ],
    ));
  }

  void refreshFunction(String newValue) {
    setState(() {
      // check the mode because may be the controller has beed changed to be empty in this case we need to change the mode to default
      _mode = _doctorsCtrl.searchCtrl.text.isNotEmpty
          ? EnModes.searchMood
          : EnModes.defaultMode;

      // check if the mode is searchMood
      _mode == EnModes.searchMood ? jumpToTheEndList(_doctorsCtrl.scrollCtrl) : null;

      // check if the mode is searchMood to execute the function that filter the list
      _mode == EnModes.searchMood
          ? context
              .read<SearchDoctorCubit>()
              .doctorsCtrl
              .filtterList(newValue)
          : null;
    });
  }
}
