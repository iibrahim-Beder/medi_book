import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medi_book/core/theming/colors.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: () {
                setState(() {
                  _isChecked = !_isChecked;
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: BoxDecoration(
                    color: _isChecked ? ColorsManager.mainBlue : ColorsManager.text30,
                    border: Border.all(
                      color: _isChecked ? ColorsManager.mainBlue : ColorsManager.grey400,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: _isChecked
                      ? Icon(
                          Icons.check,
                          color: ColorsManager.text30,
                          size: 18,
                        )
                      : null,
                ),
              ),
            );
          
  }
}
