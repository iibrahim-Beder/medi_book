import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/widgets/doctor_list_card_shimmer_loading.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';

class DoctorsListVeiwDefaultMode extends StatelessWidget {
  const DoctorsListVeiwDefaultMode({
    super.key,
    required this.isHasPadding,
    required this.doctorsList,
    required this.isHasShimmerLoading,
  });

  final bool isHasPadding;
  final List<Doctor> doctorsList;
  final bool isHasShimmerLoading;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index == doctorsList.length && isHasShimmerLoading) {
            return AnimatedOpacity(
              opacity: isHasShimmerLoading ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1),
              child: DoctorListCardShimmerLoading(
                shimmerNumber: 3,
              ),
            );
          } else {
            return Padding(
              padding: EdgeInsets.only(bottom: 24.h, left: 16.w, right: 16.w),
              child: DoctorsListViewItemAPI(
                padding: isHasPadding
                    ? EdgeInsets.only(left: 10.w)
                    : EdgeInsets.zero,
                doctorInfo: doctorsList[index],
                onTap: () => context.pushNamed('detailsDoctorScreen',extra: doctorsList[index],),
              ),
            );
          }
        },
        childCount: doctorsList.length + (isHasShimmerLoading ? 1 : 0),
      ),
    );
  }
}
