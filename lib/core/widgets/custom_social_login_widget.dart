import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/colors.dart';

class CustomSocialLoginWidget extends StatelessWidget {
  const CustomSocialLoginWidget({super.key, required this.svgPath, required this.onTap});

  final String svgPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: ColorsManager.text20,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(12),
        child: SvgPicture.asset(
          svgPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
