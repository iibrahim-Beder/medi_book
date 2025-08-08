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
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_state.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

bool isTimeToColor = true;

class SearchBottomSheetBody extends StatelessWidget {
  SearchBottomSheetBody({super.key});

  final ItemScrollController _spicialityItemCtr = ItemScrollController();
  final ItemScrollController _ratingItemCtr = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchDoctorCubit, SearchDoctorState>(
      buildWhen: (previous, current) =>
          previous.sortState.spIndex != current.sortState.spIndex ||
          previous.sortState.rtIndex != current.sortState.rtIndex,
      builder: (context, state) {
        late SortState sortState = state.sortState;

        return Container(
          decoration: BoxDecoration(
              color: ColorsManager.backgroundWhite,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
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
                    context
                        .read<SearchDoctorCubit>()
                        .updateSelectedSpecialityIndex(value);
                  },
                  spIndex: sortState.spIndex,
                  spCtrl: _spicialityItemCtr,
                
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
                    context
                        .read<SearchDoctorCubit>()
                        .updateSelectedRatingIndex(value);
                  },
                  ratingIndex: sortState.rtIndex,
                  itemScrollController: _ratingItemCtr,
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
}
