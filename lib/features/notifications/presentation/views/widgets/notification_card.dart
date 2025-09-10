import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/red_badge.dart';
import 'package:medi_book/core/widgets/shimmer_loading/circular_shimmer_loading.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationCard extends StatelessWidget {
  const NotificationCard(
      {super.key, required this.isRead, required this.appnotification});
  final bool isRead;
  final AppNotification appnotification;

  final Color baseColor = ColorsManager.text40;
  final Color highlightColor = ColorsManager.backgroundWhite;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: appnotification.isRead
          ? ColorsManager.backgroundWhite
          : ColorsManager.secondarySurfaceText,
      padding: const EdgeInsets.all(16), // optional padding
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // align top
        children: [
          SvgPicture.network(
            appnotification.svgUrl,
            height: 40.h,
            width: 40.w,
            fit: BoxFit.contain,
            placeholderBuilder: (context) => CircularShimmerLoading(
              height: 40,
              baseColor: baseColor,
              highlightColor: highlightColor,
            ),
          ),
          const SizedBox(width: 12), 
          NotificationContent(
            title: appnotification.title,
            body: appnotification.message,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(timeago.format(appnotification.createdAt),
                  style:
                      TextStyles.font12Neutral60Regular.copyWith(fontSize: 11)),
              verticalSpace(5),
              isRead ? SizedBox.shrink() : const RedBadge()
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationContent extends StatelessWidget {
  const NotificationContent(
      {super.key, required this.title, required this.body});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // align text left
        children: [
          Text(
            title,
            style: TextStyles.font14MainBlueSemiBold
                .copyWith(color: ColorsManager.text100),
          ),
          const SizedBox(height: 4), // space between title and body
          Text(
            body,
            style: TextStyles.font12Neutral60Regular
                .copyWith(color: ColorsManager.textBody),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
