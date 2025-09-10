
import 'package:flutter/widgets.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/shimmer_loading/container_shimmer_loading.dart';

class SyncingDataUi extends StatelessWidget {
  const SyncingDataUi({
    super.key,
    required this.baseColor,
    required this.highlightColor, 
    required this.textColor, 
    this.text,
  });
  final Color baseColor;
  final Color highlightColor;
  final String? text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContainerShimmerLoading(
          height: 10,
          width: 40,
          radius: BorderRadius.circular(10),
          baseColor: baseColor,
          highlightColor: highlightColor,
        ),
        horizontalSpace(10),
        Text( text ?? "Syncing data...",
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 10))
      ],
    );
  }
}
