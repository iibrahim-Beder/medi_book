import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/core/widgets/search/rating_button_list_view.dart';
import 'package:medi_book/core/widgets/search/speciality_button_list_view.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_state.dart';

class SearchBottomSheetBody extends StatefulWidget {
  const SearchBottomSheetBody({
    super.key,
  });

  @override
  State<SearchBottomSheetBody> createState() => _SearchBottomSheetBodyState();
}

class _SearchBottomSheetBodyState extends State<SearchBottomSheetBody> {
  
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
    // context.read<SearchDoctorCubit>().initScrollControllersAndHighlight();
  });
  }


  Widget build(BuildContext context) {
  
    return BlocBuilder<SearchDoctorCubit,SearchDoctorState>(
      buildWhen: (previous, current) => previous.sortState != current.sortState,

      builder: (context, state) {
        late SortState sortState = state.sortState;

        return Container(
          decoration: BoxDecoration(
              color: ColorsManager.backgroundWhite,
              borderRadius: BorderRadius.circular(20)),
          height: MediaQuery.of(context).size.height * 0.6,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(55.h),
                Center(
                  child: Text(
                    "Sort By",
                    style: TextStyles.font18Text100semiBold,
                  ),
                ),
                verticalSpace(16.h),
                Padding(
                  padding: EdgeInsets.only(right: 24.w),
                  child: Line(
                    boxDecoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                  ),
                ),
                verticalSpace(24.h),
                Text(
                  "Speciality",
                  style: TextStyles.font16Text100Bold
                      .copyWith(fontWeight: FontWeightHelper.medium),
                ),
                verticalSpace(24.h),
                SpecialityButtonListView(
                  onPressed: (value) {
                    final updated = sortState.copyWith(spIndex: value);
                    context.read<SearchDoctorCubit>().updateSortState(updated);
                    setState(() {
                      sortState = updated;
                    });
                  },
                  spIndex: sortState.spIndex,
                  spCtrl: sortState.spCtrl!,
                  timeToColor: sortState.timeToColor,
                ),
                verticalSpace(24.h),
                Text(
                  "Rating",
                  style: TextStyles.font16Text100Bold
                      .copyWith(fontWeight: FontWeightHelper.medium),
                ),
                verticalSpace(24.h),
                RatingButtonListView(
                  onPressed: (value) {
                    final updated = sortState.copyWith(rtIndex: value);
                    context.read<SearchDoctorCubit>().updateSortState(updated);

                    setState(() {
                      sortState = updated;
                    });
                  },
                  ratingIndex: sortState.rtIndex,
                  itemScrollController: sortState.rtCtrl!,
                  timeToColor: sortState.timeToColor,
                ),
                verticalSpace(48.h),
                Padding(
                  padding: EdgeInsets.only(right: 24.w),
                  child: CustomButton(
                    textValue: "Done",
                    voidCallback: () {
                      context.pop();
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();

    // reset timeToColor to false after dispose
    // _sortCtrl.timeToColor = false;
  }
}
