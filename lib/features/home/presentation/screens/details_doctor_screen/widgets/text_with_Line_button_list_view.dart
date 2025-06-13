import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/custom_text_with_line.button.dart';

class TextWithLineButtonListView extends StatelessWidget {
  const TextWithLineButtonListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DetailsDoctorCubit, DetailsDoctorState,EnDoctorSection>(
        selector: (state) => state.selectedSection,
        builder: (context, selectedSection) {
          return // we use gridview because we need Symmetric columns
              GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 2.7,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(
              EnDoctorSection.values.length,
              (index) => CustomTextWithLineButton(
                title: EnDoctorSection.values[index].name,
                isSelected: index == selectedSection.index,
                index: index,
                onTap: (value) {
                  context
                      .read<DetailsDoctorCubit>()
                      .updateSelectedSection(EnDoctorSection.values[value]);
                },
              ),
            ),
          );
        });
  }
}
