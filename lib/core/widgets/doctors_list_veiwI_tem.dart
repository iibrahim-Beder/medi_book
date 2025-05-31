import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem(
      {super.key,
      required this.padding,
      required this.doctorInfo,
      this.isHasMessageIcon = false});

  final DoctorInfo doctorInfo;
  final EdgeInsetsGeometry padding;
  final bool isHasMessageIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: ColorsManager.neutral40,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                doctorInfo.path,
                height: 110.h,
                width: 110.w,
                fit: BoxFit.cover,
              ),
            ),
            horizontalSpace(12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorInfo.name,
                    style: TextStyles.font16Text100Bold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    doctorInfo.workplace,
                    style: TextStyles.font12Text80Medium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svgs/star.svg",
                        color: ColorsManager.warning100,
                      ),
                      Text(
                        "${doctorInfo.rating} (${doctorInfo.reviewNumber} reviews)",
                        style: TextStyles.font12Text80Medium
                            .copyWith(fontSize: 12),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            isHasMessageIcon
                ? Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 25.h),
                      child: GestureDetector(
                          child: SvgPicture.asset("assets/svgs/message.svg")),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class DoctorsListViewItemAPI extends StatelessWidget {
  const DoctorsListViewItemAPI(
      {super.key,
      required this.padding,
      required this.doctorInfo,
      this.isHasMessageIcon = false});

  final Doctor doctorInfo;
  final EdgeInsetsGeometry padding;
  final bool isHasMessageIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorsManager.primarySurface,
        boxShadow: [
          BoxShadow(
        color: Colors.black.withOpacity(0.02),
        offset: Offset(0, 2),
        blurRadius: 4,
        spreadRadius: 0,
      ),
      // Slightly deeper shadow for layering
      BoxShadow(
        color: Colors.black.withOpacity(0.08),
        offset: Offset(0, 6),
        blurRadius: 12,
        spreadRadius: 1,
      ),
        ],
      ),
      child: Padding(
        padding: padding,
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: doctorInfo.imageUrl,
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return Shimmer.fromColors(
                    highlightColor: ColorsManager.primarySurfaceHighlight,
                    baseColor: ColorsManager.primarySurface,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          height: 110.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                            color: ColorsManager.primarySurface,
                            borderRadius: BorderRadius.circular(12),
                          )),
                    ));
              },
              imageBuilder: (context, imageProvider) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    height: 110.h,
                    width: 110.w,
                  ),
                );
              },
            ),
            horizontalSpace(12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${doctorInfo.firstName} ${doctorInfo.lastName}',
                    style: TextStyles.font16Text100Bold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    '${doctorInfo.spiciality + ' | ' + doctorInfo.location}',
                    style: TextStyles.font12Text80Medium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/svgs/star.svg",
                        color: ColorsManager.warning100,
                      ),
                      Text(
                        "${doctorInfo.rating} (${doctorInfo.numberOfReviews} reviews)",
                        style: TextStyles.font12Text80Medium
                            .copyWith(fontSize: 12),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            isHasMessageIcon
                ? Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 25.h),
                      child: GestureDetector(
                          child: SvgPicture.asset("assets/svgs/message.svg")),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
