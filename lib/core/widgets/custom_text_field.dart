import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.hintStyle,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.contentPadding,

  }) : super(key: key);

  final String hintText;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final OutlineInputBorder? enabledBorder;
  final OutlineInputBorder? focusedBorder;
  // final String? Function(String?)? validator;
  // final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onSaved: onSaved,
      // validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.h),
        filled: true,
        fillColor: ColorsManager.ghostWhite,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14SilverGray500Weight,
        prefixIcon: prefixIcon,
        prefixIconColor: ColorsManager.charcoal,
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManager.charcoal,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorsManager.lightGray,
              ),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
              ),
            ),
      ),
    );
  }
}
