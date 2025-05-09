import 'package:flutter/material.dart';

void jumpToLastOffset(double lastOffset, ScrollController controller) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (controller.hasClients) {
      controller.jumpTo(lastOffset);
    }
  });
}
