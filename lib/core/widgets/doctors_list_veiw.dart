import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/navigation_cubit/navigation_cubit.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/doctor_list_card_shimmer_loading.dart';
import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';

class DoctorsListVeiw extends StatelessWidget {
  const DoctorsListVeiw({
    super.key,
    required this.isHasPadding,
    required this.doctorsList,
    required this.isHasShimmerLoading,
     this.color,
  });

  final bool isHasPadding;
  final List<Doctor> doctorsList;
  final bool isHasShimmerLoading;
  final Color? color;

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
                    ? EdgeInsets.only(left: 10.w, top: 10.h)
                    : EdgeInsets.only(top: 10.h),
                doctorInfo: doctorsList[index],
                onTap: () {
                  context.read<NavigationCubit>().toggleShowen();
                  context.pushNamed(
                    'detailsDoctorScreen',
                    extra: doctorsList[index],
                  );
                },
                color:color ?? ColorsManager.primarySurfaceHighlight,
              ),
            );
          }
        },
        childCount: doctorsList.length + (isHasShimmerLoading ? 1 : 0),
      ),
    );
  }
}
