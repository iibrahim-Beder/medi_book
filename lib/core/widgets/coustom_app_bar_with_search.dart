import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/core/widgets/custom_text_field.dart';

class CustomAppBarWithSearch extends StatelessWidget {
  const CustomAppBarWithSearch(
      {super.key,
      required this.title,
      required this.widgetBox,
      required this.svgPathForTHeSecondRow,
      required this.onWidgetBoxTap,
      required this.searchController,
      required this.onChanged});

  final String title;
  final Widget widgetBox;
  final String svgPathForTHeSecondRow;
  final VoidCallback onWidgetBoxTap;

  final TextEditingController searchController;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
  
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0.0,
      toolbarHeight: 150.h,
      backgroundColor: ColorsManager.text20,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ArrowBackBoxAndAddress(
            title: title,
            coustomWidget: widgetBox,
          ),
          
          verticalSpace(20),
          Row(children: [
            Expanded(
              child: CustomTextField(
                prefixIcon: SvgPicture.asset(
                  "assets/svgs/search.svg",
                  fit: BoxFit.none,
                ),
                hintText: 'Search',
                validator: (String? value) {},
                controller: searchController,
                onChanged: onChanged,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: ColorsManager.text50,
                  ),
                ),
              ),
            ),
            horizontalSpace(10.w),
            GestureDetector(
                onTap: onWidgetBoxTap,
                child: SvgPicture.asset(
                  svgPathForTHeSecondRow,
                ))
          ])
        ],
      ),
    );
  }
}
