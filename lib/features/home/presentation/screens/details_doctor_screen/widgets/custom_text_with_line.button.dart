import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/line.dart';

class CustomTextWithLineButton extends StatelessWidget {
  const CustomTextWithLineButton(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.index,
      required this.onTap});

  final String title;
  final bool isSelected;
  final int index;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    // we use inkwell because it's to much faster than gesture detector in this case
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: () => onTap(index),
      child: SizedBox(
        height: 50.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(title,
                  style: TextStyles.font14Neutral60Bold.copyWith(
                      color: isSelected
                          ? ColorsManager.mainBlue
                          : ColorsManager.neutral60)),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Line(
                    boxDecoration: BoxDecoration(
                      color: isSelected
                          ? ColorsManager.mainBlue
                          : Colors.grey.shade200,
                    ),
                    height: 2,
                    width: MediaQuery.of(context).size.width - 32.w))
          ],
        ),
      ),
    );
  }
}
