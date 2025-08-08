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
    this.size = 45,
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

    return Stack(
      children: [
        // your scrollable content here
        if (visible)
          Positioned(
            bottom: 0,
            left: 43,
            right: 0,
            child: Center(
              child: RawMaterialButton(
                onPressed: _scrollToTop,
                fillColor: ColorsManager.primarySurfaceHighlight,
                shape: const CircleBorder(),
                constraints: BoxConstraints.tight(Size(size, size)),
                elevation: 6,
                child: Icon(
                  Icons.arrow_downward,
                  size: size * 0.5,
                  color: ColorsManager.mainBlue,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
