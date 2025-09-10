import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/appNotifications_cubit.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/notification_state.dart';

class NotificationBadgeBlocBuilder extends StatelessWidget {
  const NotificationBadgeBlocBuilder({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationCubit, NotificationState>(
      buildWhen: (previous, current) => previous.unreadCount != current.unreadCount,
      builder: (context, state) {
        final unreadCoun = state.unreadCount;
        if (unreadCoun == 0) return const SizedBox.shrink();
        return Container(
          height: 32.h,
          width: 60.w,
          decoration: BoxDecoration(
            color: ColorsManager.mainBlue,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Center(
            child: Text(
              "$unreadCoun new",
              style: TextStyles.font12Text80Medium
                  .copyWith(color: ColorsManager.backgroundWhite),
            ),
          ),
        );
      },
    );
  }
}
