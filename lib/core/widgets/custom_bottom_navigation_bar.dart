
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/navigation_cubit/navigation_cubit.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/bottom_vavIcon.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.cuibt,
  });

  final int currentIndex;
  final NavigationCubit cuibt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(5, (index) {
        final isSelected = currentIndex == index;
        final icon = Padding(
          padding: const EdgeInsets.all(20),
          child: BottomNavIcon(
            assetPath: bottomNavigationTabsItems[index],
            isSelected: isSelected,
          ),
        );
    
      return InkWell(
          onTap: () {
            if (index != currentIndex) {
              cuibt.onTabSelected(BottomNavigationTab.values[index], context);
            }
          },
          child: Transform.translate(
            offset: isSelected ? const Offset(0, -20) : Offset.zero,
            child: isSelected
                ? Container(
                    alignment: Alignment.center,
                    width: 72.w,
                    height: 72.h,
                    decoration: BoxDecoration(
                      color: ColorsManager.mainBlue,
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(
                        color: ColorsManager.backgroundWhite,
                        width: 5,
                      ),
                    ),
                    child: icon,
                  )
                : icon,
          ),
        );
      }),
    );
  }
}
