import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/show_all_as_read_block_selector.dart';

class NotificationSectionHeader extends StatelessWidget {
  final String dateLabel;
  final bool isFirstSection;

  const NotificationSectionHeader({
    super.key,
    required this.dateLabel,
    required this.isFirstSection,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            dateLabel,
            style: TextStyles.font12Text80Medium
                .copyWith(color: ColorsManager.neutral60),
          ),
          !isFirstSection
              ? const SizedBox.shrink()
              : ShowAllAsReadBlockSelector(),
        ],
      ),
    );
  }
}
