import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/notifications/domain/usecases/group_notifications_by_day.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/appNotifications_cubit.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/notification_state.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/notification_list_view.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/shimmer_loading/notification_list_view_shimmer_loading.dart';

class NotificationListViewBlockBuilder extends StatelessWidget {
  const NotificationListViewBlockBuilder({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
      
    return BlocBuilder<NotificationCubit, NotificationState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading || previous.notifications != current.notifications,
      builder: (context, state) {
        if (state.isLoading) {
          return const NotificationListViewShimmerLoading();
        }
        final groupedNotifications = groupByDay(state.notifications);
        return NotificationListView(groupedNotifications: groupedNotifications);
      },
    );
  }
}
