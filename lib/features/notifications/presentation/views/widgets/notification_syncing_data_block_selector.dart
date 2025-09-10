import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/shimmer_loading/syncing_data_ui.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/appNotifications_cubit.dart';
import 'package:medi_book/features/notifications/presentation/manager/notifications_cubit/notification_state.dart';

class NotificationSyncingDataBlockSelector extends StatelessWidget {
  const NotificationSyncingDataBlockSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NotificationCubit, NotificationState, bool>(
      selector: (state) => state.isSyncing,
      builder: (context, state) {
        if (!state) return const SizedBox.shrink();
        return SyncingDataUi(
          baseColor: ColorsManager.mainBlue,
          highlightColor: ColorsManager.mainBlueDiluted,
          textColor: ColorsManager.mainBlueDarker,
        );
      },
    );
  }
}
