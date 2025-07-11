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
    required this.validator,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged, this.focusNode,
  }) : super(key: key);

  final String hintText;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final OutlineInputBorder? enabledBorder;
  final OutlineInputBorder? focusedBorder;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onChanged: onChanged,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.h),
        filled: true,
        fillColor: ColorsManager.text20,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14Text50Medium,
        prefixIcon: prefixIcon,
        prefixIconColor: ColorsManager.text100,
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManager.text100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorsManager.text30,
              ),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      validator: (value) {
        return validator!(value);
      },
    );
  }
}
