import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/features/home/domain/entities/doctor.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/doctor_map_action_button_list.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/filter_button_list.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/filter_button_list.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/nearby_doctor_availability_status_banner.dart';

class DraggableContentSheet extends StatelessWidget {
  const DraggableContentSheet({
    super.key,
    required DraggableScrollableController controller,
  }) : _controller = controller;

  final DraggableScrollableController _controller;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: _controller,
      initialChildSize: 0.16,
      minChildSize: 0.16,
      maxChildSize: 0.9,
      snap: true,
      snapSizes: const [0.16, 0.6, 0.9],
      expand: true,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: ColorsManager.primarySurface,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              // SliverPersistentHeader with fixed height
              SliverPersistentHeader(
                pinned: true,  // Makes the app bar sticky
                delegate: _FixedSizeAppBarDelegate(),
              ),
              // Your other content below the app bar
              SliverList(
        
                delegate: SliverChildListDelegate([
                  const FilterButtonList(),
                  const DoctorFindNearbyCard(
                    widget: NearbyDoctorAvailabilityStatusBanner(
                      isAvailable: false,
                      distanceText: '2.3 km away',
                      nextAppointmentText: 'Tomorrow, 9:00 AM',
                    ),
                  ),
                  verticalSpace(12),
                  const DoctorFindNearbyCard(
                    widget: NearbyDoctorAvailabilityStatusBanner(
                      isAvailable: true,
                      distanceText: '2.3 km away',
                      nextAppointmentText: 'Tomorrow, 9:00 AM',
                    ),
                  ),
                  verticalSpace(12),
                  const DoctorFindNearbyCard(
                    widget: NearbyDoctorAvailabilityStatusBanner(
                      isAvailable: false,
                      distanceText: '2.3 km away',
                      nextAppointmentText: 'Tomorrow, 9:00 AM',
                    ),
                  ),
                  verticalSpace(12),
                  const DoctorFindNearbyCard(
                    widget: NearbyDoctorAvailabilityStatusBanner(
                      isAvailable: true,
                      distanceText: '2.3 km away',
                      nextAppointmentText: 'Tomorrow, 9:00 AM',
                    ),
                  ),
                  verticalSpace(12),
                ]),
              ),
            ],
          ),
        );
      },
    );
  }
}

// Custom delegate for fixed-size AppBar
class _FixedSizeAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 60.0; // Fixed height for the app bar
  @override
  double get maxExtent => 60.0; // Fixed height for the app bar

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return DraggableContentSheetAppBar(); // Your app bar widget
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false; // No need to rebuild
  }
}

class DoctorFindNearbyCard extends StatelessWidget {
  const DoctorFindNearbyCard({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorsManager.backgroundWhite,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              verticalSpace(12),
              widget,
              // NearbyDoctorAvailabilityStatusBanner(
              //   isAvailable: false,
              //   distanceText: '2.3 km away',
              //   nextAppointmentText: 'Tomorrow, 9:00 AM',
              // ),
              verticalSpace(12),
              Line(
                boxDecoration:
                    BoxDecoration(color: ColorsManager.secondarySurfaceText),
                height: 1.3,
              ),
              verticalSpace(8),
              SizedBox(
                height: 115.h,
                child: DoctorsListViewItemAPI(
                  padding: EdgeInsets.only(),
                  doctorInfo: Doctor(
                    id: 1,
                    firstName: 'John',
                    lastName: 'Doe',
                    spiciality: 'Cardiologist',
                    location: 'New York, NY',
                    rating: 4.8,
                    numberOfReviews: 120,
                    imageUrl:
                        'https://efec73dd9d22.ngrok-free.app/uploads/images/persons/rendy.png',
                  ),
                  color: Colors.white,
                  paddingOfIconMessage: EdgeInsets.only(top: 25, right: 10),
                  impageSize: 90,
                  highlightColorShimmer: ColorsManager.backgroundWhite,
                  baseColorShimmer: ColorsManager.text30,
                  is3DRemark: false,
                ),
              ),
              const DoctorMapActionButtonList(),
              verticalSpace(16),
            ],
          ),
        ));
  }
}
