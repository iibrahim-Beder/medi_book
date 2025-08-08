import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/colors.dart';

class BottomNavIcon extends StatelessWidget {
  final String assetPath;
  final bool isSelected;

  const BottomNavIcon({
    super.key,
    required this.assetPath,
    required this.isSelected,
  });

  @override

  Widget build(BuildContext context) {
    final isSvg = assetPath.endsWith('.svg');

    return isSvg
        ? SvgPicture.asset(
            assetPath,
            height: 24,
            width: 24,
            color: isSelected ? Colors.white : ColorsManager.text100,
          )
        : Image.asset(
            assetPath,
            height: 24,
            width: 24,
            color: null,
          );
  }
}
