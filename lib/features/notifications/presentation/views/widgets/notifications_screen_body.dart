import 'package:flutter/material.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/notification_badge_bloc_builder.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/notification_list_view_list_view.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/notification_syncing_data_block_selector.dart';

class NotificationsScreenBody extends StatelessWidget {
  const NotificationsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, top: 40, bottom: 15),
          child: ArrowBackBoxAndAddress(
            title: "Notifications",
            coustomWidget: NotificationBadgeBlocBuilder(),
            bottomWidget: NotificationSyncingDataBlockSelector(),
          ),
        ),
        // Remove this fixed header here, because NotificationListView adds headers dynamically
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        //   child: NotificationSectionHeader(
        //     dateLabel: 'Today',
        //     isFirstSection: true,
        //   ),
        // ),
        Expanded(child: NotificationListViewBlockBuilder()),
      ],
    );
  }
}
