import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

void jumpToSelected({
    required ItemScrollController controller,
    required int selectedIndex,
    required Function triggerColoring,
  }) {
    controller.scrollTo(
      index: selectedIndex,
      duration: const Duration(milliseconds: 1),
      alignment: 0.32,
    );

    Future.delayed(const Duration(milliseconds: 1), () {
      triggerColoring();
    });
  }