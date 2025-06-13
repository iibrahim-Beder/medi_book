import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SortCtrl {
  
  int spIndex = 0;
  int rtIndex = 0;

  bool timeToColor = false;

  final ItemScrollController spCtrl = ItemScrollController();
  final ItemScrollController rtCtrl = ItemScrollController();

  // static void jumpToSelected({
  //   required ItemScrollController controller,
  //   required int selectedIndex,
  //   required Function triggerColoring,
  // }) {
  //   controller.scrollTo(
  //     index: selectedIndex,
  //     duration: const Duration(milliseconds: 1),
  //     alignment: 0.32,
  //   );

  //   Future.delayed(const Duration(milliseconds: 1), () {
  //     triggerColoring();
  //   });
  // }
}
