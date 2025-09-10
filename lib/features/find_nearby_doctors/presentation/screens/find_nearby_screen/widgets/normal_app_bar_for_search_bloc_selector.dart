import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/core/widgets/search/speciality_button_list_view.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/widget_box.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_cubit.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_state.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/helpers/show_search_options_bottom_sheet_for_find_nearby.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NormalAppBarForSearchBlocSelector extends StatelessWidget {
  const NormalAppBarForSearchBlocSelector({
    super.key,
    this.isSearcHasShadow,
    this.isArrowBackHasShadow,
  });
  final bool? isSearcHasShadow;
  final bool? isArrowBackHasShadow;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<FindNearbyDoctorCubit, FindNearbyDoctorState, bool>(
      selector: (state) => state.isLoading || state.userLocation == null,
      builder: (context, state) {
        if (!state) {
          return CustomAppBarForFindNearby(
              isSearcHasShadow: isSearcHasShadow,
              isArrowBackHasShadow: isArrowBackHasShadow);
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}

class CustomAppBarForFindNearby extends StatelessWidget {
  const CustomAppBarForFindNearby({
    super.key,
    required this.isSearcHasShadow,
    required this.isArrowBackHasShadow,
  });

  final bool? isSearcHasShadow;
  final bool? isArrowBackHasShadow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NormalAppBarForSearch(
          color: Colors.transparent,
          title: 'Find Nearby',
          widgetBox: WidgetBox(),
          // widgetBoxTheSecondRow: FilterLocationContainer(),
          onWidgetBoxTap: () {},
          onChanged: (_) => {},
          searchController: TextEditingController(),
          isHasMoreVertBoutton: false,
          isHasFiltersBoutton: false,
          svgPathForTHeSecondRow: '',
          spaceBetweenRows: verticalSpace(5),
          isSearcHasShadow: isSearcHasShadow,
          isArrowBackHasShadow: isArrowBackHasShadow,
        ),
        SizedBox(
          height: 41.h,
          child: SpecialityButtonListView(
            onPressed: (value) async {
              // context.read<FindNearbyDoctorCubit>().fetchNearbyDoctors();
              await findNearbyBottomSheetForBlocBuilder(context, 0.3);
            },
            spIndex: 0,
            spCtrl: ItemScrollController(),
            specialtiesList: context.read<FindNearbyDoctorCubit>().specialties!,
            textColor: ColorsManager.text80,
            isHasShadow: true,
            padding: EdgeInsets.only(right: 0.w),
            
          ),
        ),
      ],
    );
  }
}
