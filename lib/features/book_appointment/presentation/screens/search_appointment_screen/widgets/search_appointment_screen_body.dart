import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/search_appointment_screen/widgets/bloc_builder/search_appointment_options_block_selector.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/search_appointment_screen/widgets/search_my_appointment_sections.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/widget_box.dart';

class SearchAppointmentScreenBody extends StatefulWidget {
  const SearchAppointmentScreenBody({super.key});

  @override
  State<SearchAppointmentScreenBody> createState() =>
      _SearchAppointmentScreenBodyState();
}

class _SearchAppointmentScreenBodyState
    extends State<SearchAppointmentScreenBody> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Request focus after screen builds
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NormalAppBarForSearch(
          title: 'Search My Appointments',
          widgetBox: WidgetBox(),
          svgPathForTHeSecondRow: "assets/svgs/sort.svg",
          onWidgetBoxTap: () {},
          onChanged: (_) => {},
          searchController: _searchController,
          color: ColorsManager.backgroundWhite,
          isHasMoreVertBoutton: false,
          isHasFiltersBoutton: false,
          focusNode: _focusNode,
        ),
        verticalSpace(10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SearchAppointmentOptionsBlockSelector(),
        ),
        verticalSpace(30),
        const SearchMyAppointmentSections(),
      ],
    );
  }
}
