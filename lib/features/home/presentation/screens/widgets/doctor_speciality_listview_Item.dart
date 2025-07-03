import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/circular_shimmer_loading.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({
    super.key,
    required this.index,
  });

  final int index;

  final Color? highlightColor = ColorsManager.primarySurfaceHighlight;
  final Color? baseColor = ColorsManager.primarySurfaceBaseLight;

  @override
  Widget build(BuildContext context) {
    final specialties =
        context.read<MainHomeCubit>().state.specialtiesState.data;

    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(
          left: index == 0 ? 10.w : 0,
          right: 25.w,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CachedNetworkImage(
                imageUrl: specialties[index].imageUrl,
                progressIndicatorBuilder: (context, url, downloadProgress) {
                  return CircularShimmerLoading(
                    height: 56,
                    baseColor: baseColor,
                    highlightColor: highlightColor,
                  );
                },
                imageBuilder: (context, imageProvider) {
                  return Container(
                    height: 56.h,
                    width: 56.w,
                    decoration: BoxDecoration(
                        color: ColorsManager.primarySurface,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.07),
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Image(
                        image: imageProvider,
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                }),
            verticalSpace(16),
            Text(
              specialties[index].name,
              style: TextStyles.font12Neutral60Regular
                  .copyWith(color: ColorsManager.text100),
            )
          ],
        ),
      ),
    );
  }
}
