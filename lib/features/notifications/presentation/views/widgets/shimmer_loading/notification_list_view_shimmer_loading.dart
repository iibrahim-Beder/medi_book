
import 'package:flutter/widgets.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/shimmer_loading/notification_card_shimmer_loading.dart';

class NotificationListViewShimmerLoading extends StatelessWidget {
  const NotificationListViewShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => NotificationCardShimmerLoading(),
      itemCount: 7,
    );
  }
}
