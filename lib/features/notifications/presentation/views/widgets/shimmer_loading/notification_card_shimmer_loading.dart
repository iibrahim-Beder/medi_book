import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/shimmer_loading/container_shimmer_loading.dart';

final Color baseColor = ColorsManager.text40;
final Color highlightColor = ColorsManager.backgroundWhite;

class NotificationCardShimmerLoading extends StatelessWidget {
  const NotificationCardShimmerLoading({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
      
        children: [
          Row(
            children: [
              ContainerShimmerLoading(
                height: 10,
                width: 170,
                radius: BorderRadius.circular(2),
                baseColor: baseColor,
                highlightColor: highlightColor,
              ),
              const Spacer(),
              ContainerShimmerLoading(
                height: 7,
                width: 20,
                radius: BorderRadius.circular(2),
                baseColor: baseColor,
                highlightColor: highlightColor,
              ),
            ],
          ),
          verticalSpace(5),
          Row(
            children: [
              Expanded(
                child: ContainerShimmerLoading(
                  height: 80,
                  width: 0,
                  radius: BorderRadius.circular(2),
                  baseColor: baseColor,
                  highlightColor: highlightColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

