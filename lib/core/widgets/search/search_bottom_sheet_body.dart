import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/core/widgets/search/rating_button_list_view.dart';
import 'package:medi_book/core/widgets/search/speciality_button_list_view.dart';

class SearchBottomSheetBody extends StatefulWidget {
  const SearchBottomSheetBody({
    super.key,
  });

  @override
  State<SearchBottomSheetBody> createState() => _SearchBottomSheetBodyState();
}

class _SearchBottomSheetBodyState extends State<SearchBottomSheetBody> {
  @override
  String specialitySelectedName = "General";
  String ratingSelectedName = "All";

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
              child: Line(),
            ),
            verticalSpace(24.h),
            Text(
              "Speciality",
              style: TextStyles.font16Text100Bold
                  .copyWith(fontWeight: FontWeightHelper.medium),
            ),
            verticalSpace(24.h),
            SpecialityButtonListView(
              onPressed: (String value) {
                _refreshSpecialitySelectedName(value);
              },
              specialitySelectedName: specialitySelectedName,
            ),
            verticalSpace(24.h),
            Text(
              "Rating",
              style: TextStyles.font16Text100Bold
                  .copyWith(fontWeight: FontWeightHelper.medium),
            ),
            verticalSpace(24.h),
            RatingButtonListView(onPressed: (String value) { 
              _refreshRatingSelectedName(value);
             }, 
             ratingSelectedName: ratingSelectedName,),
            verticalSpace(48.h),
            Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: CustomButton(
                textValue: "Done",
                voidCallback: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  void _refreshRatingSelectedName(String value) {
      setState(() {
      ratingSelectedName = value;
    });
  }

  void _refreshSpecialitySelectedName(String value) {
      setState(() {
      specialitySelectedName = value;
    });
  }
}
