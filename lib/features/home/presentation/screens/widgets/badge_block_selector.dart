
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/red_badge.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/appNotifications_cubit.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/notification_state.dart';

class BadgeBlockSelector extends StatelessWidget {
  const BadgeBlockSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NotificationCubit, NotificationState,bool>(
      selector: (state) => state.unreadCount > 0,
      builder: (context, state) {
        if (!state) return SizedBox.shrink();
        return const RedBadge();
      },
    
    );
  }
}

