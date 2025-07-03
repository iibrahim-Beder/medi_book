import 'package:flutter/material.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/custom_text_with_line.button.dart';

class TextWithLineButtonListView extends StatelessWidget {
  const TextWithLineButtonListView({super.key, required this.selectedSectionIndex, required this.data, required this.onTap});

  final int selectedSectionIndex;
  final List<String> data;
  final Function(int index) onTap;
  
  @override
  Widget build(BuildContext context) {
    return // we use gridview because we need Symmetric columns
        GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 2.7,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(
        data.length,
        (index) => CustomTextWithLineButton(
          title: data[index],
          isSelected: index == selectedSectionIndex,
          index: index,
          onTap: (value) => onTap!(value),
        ),
      ),
    );
  }
}
