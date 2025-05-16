
import 'package:flutter/material.dart';

RenderBox? getWidgetRenderBox(GlobalKey key) {
  final context = key.currentContext;
  if (context != null) {
    final box = context.findRenderObject() as RenderBox?;
    return box;
  }
  return null;
}