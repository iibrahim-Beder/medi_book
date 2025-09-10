import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/filter_state.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/core/widgets/search/rating_button_list_view.dart';
import 'package:medi_book/core/widgets/search/speciality_button_list_view.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SearchBottomSheetBody extends StatefulWidget {
  SearchBottomSheetBody({
    super.key,
    required this.filterState,
    required this.specialties,
    this.textColor,
    this.starColor,
    this.mainTextColor,
    this.isHasGlassEffect = false,
  });

  late FilterState filterState;
  late List<Speciality> specialties;
  late Color? textColor;
  late Color? starColor;
  late Color? mainTextColor;
  late bool isHasGlassEffect;

  @override
  State<SearchBottomSheetBody> createState() => _SearchBottomSheetBodyState();
}

class _SearchBottomSheetBodyState extends State<SearchBottomSheetBody> {
  final ItemScrollController _spicialityItemCtr = ItemScrollController();
  final ItemScrollController _ratingItemCtr = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.r),
        topRight: Radius.circular(20.r),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: widget.isHasGlassEffect
                ? Colors.transparent
                : ColorsManager.backgroundWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: Offset(0, -2),
              )
            ],
          ),
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
                    style: TextStyles.font18Text100semiBold.copyWith(
                        color: widget.mainTextColor ?? ColorsManager.text100),
                  ),
                ),
                verticalSpace(16.h),
                Padding(
                  padding: EdgeInsets.only(right: 24.w),
                  child: Line(
                    boxDecoration: BoxDecoration(
                      color: widget.textColor ?? ColorsManager.text40,
                    ),
                  ),
                ),
                verticalSpace(24.h),
                Text(
                  "Speciality",
                  style: TextStyles.font16Text100Bold.copyWith(
                      fontWeight: FontWeightHelper.medium,
                      color: widget.mainTextColor ?? ColorsManager.text100),
                ),
                verticalSpace(24.h),
                SpecialityButtonListView(
                    onPressed: (value) {
                      widget.filterState.selectedSpecialityIndex = value;
                      setState(() {});
                    },
                    spIndex: widget.filterState.selectedSpecialityIndex,
                    spCtrl: _spicialityItemCtr,
                    specialtiesList: widget.specialties,
                    textColor: widget.textColor,
                    starColor: widget.starColor),
                verticalSpace(24.h),
                Text(
                  "Rating",
                  style: TextStyles.font16Text100Bold.copyWith(
                      fontWeight: FontWeightHelper.medium,
                      color: widget.mainTextColor ?? ColorsManager.text100),
                ),
                verticalSpace(24.h),
                RatingButtonListView(
                    onPressed: (value) {
                      widget.filterState.selectedRatingIndex = value;
                      setState(() {});
                    },
                    ratingIndex: widget.filterState.selectedRatingIndex,
                    itemScrollController: _ratingItemCtr,
                    textColor: widget.textColor,
                    starColor: widget.starColor),
                verticalSpace(48.h),
                Padding(
                  padding: EdgeInsets.only(right: 24.w),
                  child: CustomButton(
                    textValue: "Done",
                    voidCallback: () {
                      context.pop(widget.filterState);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
