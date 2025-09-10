import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/appNotifications_cubit.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/notification_card.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/notification_section_header.dart';

class NotificationListView extends StatelessWidget {
  final Map<String, List<AppNotification>> groupedNotifications;

  const NotificationListView({
    super.key,
    required this.groupedNotifications,
  });

  @override
  Widget build(BuildContext context) {
    final groupKeys = groupedNotifications.keys.toList();
    final cubit = context.read<NotificationCubit>();
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 40.h),
      itemCount: groupKeys.length,
      itemBuilder: (context, index) {
        final groupKey = groupKeys[index];
        final notifications = groupedNotifications[groupKey]!;
    
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationSectionHeader(
              dateLabel: groupKey,
              isFirstSection: index == 0,
            ),
            ...notifications.map((notification) {
              return GestureDetector(
                onTap: () => cubit.markNotificationAsRead(notification.id),
                child: NotificationCard(
                  appnotification: notification,
                  isRead: notification.isRead,
                ),
              );
            }).toList(),
          ],
        );
      },
    );
  }
}
