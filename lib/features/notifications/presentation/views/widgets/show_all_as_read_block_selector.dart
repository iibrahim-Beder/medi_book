import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/appNotifications_cubit.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/notification_state.dart';

class ShowAllAsReadBlockSelector extends StatelessWidget {
  const ShowAllAsReadBlockSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NotificationCubit, NotificationState, bool>(
      selector: (state) => state.unreadCount > 0,
      builder: (context, state) {
        if (!state) return const SizedBox.shrink();
        return TextButton(
          onPressed: () => context.read<NotificationCubit>().markAllAsRead(),
          // ignore: sort_child_properties_last
          child: Text(
            'Show all as read',
            style: TextStyles.font12Neutral60Regular
                .copyWith(color: ColorsManager.mainBlue),
          ),
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        );
      },
    );
  }
}
