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
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/controllers/sort_ctrl.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';

class SearchBottomSheetBody extends StatefulWidget {
  const SearchBottomSheetBody({
    super.key,
  });

  @override
  State<SearchBottomSheetBody> createState() => _SearchBottomSheetBodyState();
}

class _SearchBottomSheetBodyState extends State<SearchBottomSheetBody> {
  late SortCtrl _sortCtrl;

  @override
  void initState() {
    super.initState();

    // loading data from cubit
    _sortCtrl = context.read<SearchDoctorCubit>().sortCtrl;

    // [1]jumping to selected item in both controllers after build the widget.
    // [2]and trigger coloring.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SortCtrl.jumpToSelected(
        controller: _sortCtrl.spCtrl,
        selectedIndex: _sortCtrl.spIndex,
        triggerColoring: () {
          setState(() {
            _sortCtrl.timeToColor = true;
          });
        },
      );
      // we dont't need to trigger coloring for because both controller are the same.
      SortCtrl.jumpToSelected(
        controller: _sortCtrl.rtCtrl,
        selectedIndex: _sortCtrl.rtIndex,
        triggerColoring: () {},
      );
    });
  }

  Widget build(BuildContext context) {
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
              child: Line(boxDecoration: BoxDecoration(color: Colors.grey.shade200,),),
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
                setState(() {
                  _sortCtrl.spIndex = value;
                });
              },
              spIndex: _sortCtrl.spIndex,
              spCtrl: _sortCtrl.spCtrl,
              timeToColor: _sortCtrl.timeToColor,
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
                setState(() {
                  _sortCtrl.rtIndex = value;
                });
              },
              ratingIndex: _sortCtrl.rtIndex,
              itemScrollController: _sortCtrl.rtCtrl,
              timeToColor: _sortCtrl.timeToColor,
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
  }

  @override
  void dispose() {
    super.dispose();

    // reset timeToColor to false after dispose
    _sortCtrl.timeToColor = false;
  }
}
