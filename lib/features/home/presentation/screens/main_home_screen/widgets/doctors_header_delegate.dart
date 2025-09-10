import 'package:flutter/material.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/doctors_blue_container.dart';

class DoctorsHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final maxShrink = maxExtent - minExtent;
    final opacity = (1 - (shrinkOffset / maxShrink)).clamp(0.0, 1.0);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: DoctorsBlueContainer(opacity: opacity),
    );
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
