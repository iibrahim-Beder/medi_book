import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/core/widgets/custom_text_field.dart';

class NormalAppBarForSearch extends StatelessWidget {
  const NormalAppBarForSearch({
    super.key,
    required this.title,
    required this.widgetBox,
    required this.svgPathForTHeSecondRow,
    required this.onWidgetBoxTap,
    required this.searchController,
    required this.onChanged,
    this.focusNode, 
    this.color,
  });

  final String title;
  final Widget widgetBox;
  final String svgPathForTHeSecondRow;
  final VoidCallback onWidgetBoxTap;
  final FocusNode? focusNode;
  final TextEditingController searchController;
  final Function(String)? onChanged;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 10.h,
        bottom: 20.h,
        left: 16.w,
        right: 16.w,
      ),
      color: color ?? ColorsManager.text20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ArrowBackBoxAndAddress(
            title: title,
            coustomWidget: widgetBox,
          ),
          verticalSpace(20),
          Row(
            children: [
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
                  // focusNode: focusNode,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 10.h,
                  ),
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
