
import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/filter_button.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/more_filters_button.dart';

class FilterButtonList extends StatelessWidget {
  const FilterButtonList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: ColorsManager.backgroundWhite,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            verticalSpace(4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(Icons.tune, size: 20, color: Colors.black87),
                  horizontalSpace(8),
                  FilterButton(
                    onTap: () {},
                    isChecked: true,
                    isHasLeftIcon: true,
                    title: 'Distance',
                  ),
                  horizontalSpace(8),
                  FilterButton(
                    onTap: () {},
                    isChecked: false,
                    title: 'Working Now',
                  ),
                  horizontalSpace(8),
                  FilterButton(
                    onTap: () {},
                    isChecked: true,
                    title: 'Top rated',
                  ),
                  horizontalSpace(8),
                  MoreFiltersButton()
                ],
              ),
            ),
            verticalSpace(16),
          ],
        ),
      ),
    );
  }
}
