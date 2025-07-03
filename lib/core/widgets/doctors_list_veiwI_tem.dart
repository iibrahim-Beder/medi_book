import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/container_shimmer_loading.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsListViewItem extends StatelessWidget {
  DoctorsListViewItem(
      {super.key,
      required this.padding,
      required this.doctorInfo,
      this.isHasMessageIcon = false,
      this.color,
      this.onTap});

  final DoctorInfo doctorInfo;
  final EdgeInsetsGeometry padding;
  final bool isHasMessageIcon;
  final Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          color: color ?? ColorsManager.neutral40,
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
                  : SizedBox.shrink(),
            ],
          ),
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
      this.isHasMessageIcon = false,
      this.onTap,
      this.color,
      this.is3DRemark = true,
      this.impageSize,
      this.paddingOfIconMessage,
      this.isHasLine = false,
      this.highlightColorShimmer,
      this.baseColorShimmer});

  final Doctor doctorInfo;
  final EdgeInsetsGeometry padding;
  final bool isHasMessageIcon;
  final EdgeInsetsGeometry? paddingOfIconMessage;
  final VoidCallback? onTap;
  final Color? color;
  final bool is3DRemark;
  final double? impageSize;
  final bool isHasLine;
  final Color? highlightColorShimmer;
  final Color? baseColorShimmer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: 138.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color ?? ColorsManager.primarySurface,
          boxShadow: !is3DRemark
              ? []
              : [
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
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl: doctorInfo.imageUrl,
                  progressIndicatorBuilder: (context, url, downloadProgress) {
                    return Shimmer.fromColors(
                      highlightColor: highlightColorShimmer ??
                          ColorsManager.primarySurfaceHighlight,
                      baseColor:
                          baseColorShimmer ?? ColorsManager.primarySurface,
                      // child: Padding(
                      //   padding: padding,
                      //   child: ContainerShimmerLoading(
                      //     height: 110.h,
                      //     width: 110.w,
                      //     radius: BorderRadius.circular(12),
                      //   ),

                      child: Padding(
                        padding: padding,
                        child: Container(
                            height: impageSize ?? 110.h,
                            width: impageSize ?? 110.w,
                            decoration: BoxDecoration(
                              color: baseColorShimmer ??
                                  ColorsManager.primarySurface,
                              borderRadius: BorderRadius.circular(12),
                            )),
                      ),
                    );
                  },
                  imageBuilder: (context, imageProvider) {
                    return Padding(
                      padding: padding,
                      child: Image(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        height: impageSize ?? 110.h,
                        width: impageSize ?? 110.w,
                      ),
                    );
                  },
                ),
                horizontalSpace(12),
                Expanded(
                  child: Padding(
                    padding: paddingOfIconMessage ?? EdgeInsets.only(top: 20.h),
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
                ),
                isHasMessageIcon
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: paddingOfIconMessage ??
                              EdgeInsets.only(top: 25.h),
                          child: GestureDetector(
                              child:
                                  SvgPicture.asset("assets/svgs/message.svg")),
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
            verticalSpace(16),
            isHasLine
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Line(
                      boxDecoration: BoxDecoration(
                          color: ColorsManager.secondarySurfaceText),
                      height: 1.3,
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
