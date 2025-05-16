import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';
import 'package:medi_book/features/home/presentation/screens/details_doctor_screen/widgets/custom_text_with_line.button.dart';

class TextWithLineButtonListView extends StatelessWidget {
  const TextWithLineButtonListView({super.key, required this.onTap});

  final void Function(EnDoctorSection) onTap;
  @override
  Widget build(BuildContext context) {
    return // we use gridview because we need Symmetric columns
     GridView.count(
       crossAxisCount: 3,
       childAspectRatio: 2.7,
       physics: NeverScrollableScrollPhysics(),
       shrinkWrap: true,
       children: List.generate(
         doctorDetailsSections.length,
         (index) => CustomTextWithLineButton(
           title: doctorDetailsSections[index],
           // i will get selected index from cubit instead of get it injected from constructor to avoid prop drilling
           isSelected: index == context.read<DetailsDoctorCubit>().sectionCtrl.selectedSection.index,
           index: index,
           onTap: (values) => onTap(EnDoctorSection.values[index]),
         ),
       ),
     );
  }
  }


