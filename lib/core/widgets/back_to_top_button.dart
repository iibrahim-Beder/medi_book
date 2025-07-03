
import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';

class BackToTopButton extends StatelessWidget {
  final ScrollController controller;
  final bool visible;
  final double showOffset;
  final double size;
  final Duration duration;

  const BackToTopButton({
    Key? key,
    required this.controller,
    required this.visible,
    this.showOffset = 300,
    this.size = 56,
    this.duration = const Duration(milliseconds: 500),
  }) : super(key: key);

  void _scrollToTop() {
    controller.animateTo(
      0.0,
      duration: duration,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!visible) return SizedBox.shrink();

    return FloatingActionButton(
      
      onPressed: _scrollToTop,
      backgroundColor: ColorsManager.primarySurfaceHighlight,
      elevation: 6,
      child: Icon(Icons.arrow_upward, size: size * 0.5, color: ColorsManager.mainBlue,),
    );
  }
}