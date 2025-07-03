import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/text_with_Line_button_list_view.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
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
            padding: EdgeInsets.all(24.w),
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
          Expanded(
            child: AppointmentCardListView(),
          ),
        ],
      ),
    );
  }
}

class AppointmentCardListView extends StatelessWidget {
  const AppointmentCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      itemCount: 1,
      itemBuilder: (context, index) => const AppointmentCard(),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: DoctorsListViewItemAPI(
          padding: EdgeInsets.only(left: 10, top: 12),
          doctorInfo: Doctor(
            id: 1,
            firstName: 'John',
            lastName: 'Doe',
            spiciality: 'Cardiologist',
            location: 'New York, NY',
            rating: 4.8,
            numberOfReviews: 120,
            imageUrl:
                'https://7cb5-102-46-91-223.ngrok-free.app//uploads/images/persons/rendy.png',
          ),
          color: Colors.white,
          isHasMessageIcon: true,
          paddingOfIconMessage: EdgeInsets.only(top: 25, right: 10),
          impageSize: 90,
          isHasLine: true,
        
        ));
  }
}
