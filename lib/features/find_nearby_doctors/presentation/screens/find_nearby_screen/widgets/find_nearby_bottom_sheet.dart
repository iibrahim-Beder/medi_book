import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';


class FindNearbyBottomSheet extends StatelessWidget {
  const FindNearbyBottomSheet({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: height,
      minChildSize: 0.2,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: ColorsManager.backgroundWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                children: const [
                  SizedBox(height: 24),
                  CircularProgressIndicator(
                    color: ColorsManager.mainBlue,
                  ),
                  SizedBox(height: 400),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
