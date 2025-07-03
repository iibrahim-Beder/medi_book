import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/appointment_card_list_view.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/completed_appointment_card_list_view.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/text_with_Line_button_list_view.dart';
import 'package:medi_book/features/home/presentation/screens/widgets/widget_box.dart';

enum MyAppointmentType { upcoming, completed, cancelled }

class MyAppointmentScreenBody extends StatelessWidget {
  const MyAppointmentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          NormalAppBarForSearch(
            title: 'Recommendation Doctors',
            widgetBox: const WidgetBox(),
            svgPathForTHeSecondRow: "assets/svgs/sort.svg",
            onWidgetBoxTap: () {},
            onChanged: (_) => null,
            searchController:
                TextEditingController(), // ← Use TextEditingController not SearchController
            color: ColorsManager.backgroundWhite,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: TextWithLineButtonListView(
              selectedSectionIndex: 0,
              data: MyAppointmentType.values
                  .map((e) => e.name[0].toUpperCase() + e.name.substring(1))
                  .toList(),
              onTap: (int index) {
                // handle tab change
              },
            ),
          ),
          verticalSpace(10),
          // AppointmentCardListView(),
          CompletedAppointmentCardListView(),
        ],
      ),
    );
  }
}