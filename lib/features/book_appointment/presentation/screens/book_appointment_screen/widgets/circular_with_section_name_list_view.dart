import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/circular_with_section_name.dart';

class CircularWithSectionNameListView extends StatelessWidget {
  const CircularWithSectionNameListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookAppointmentCubit, BookAppointmentState,
        EnAppointmentSection>(
      selector: (state) => state.currentSection,
      builder: (context, currentSection) {
        return SizedBox(
          height: 55.h,
          child: ListView.builder(
            itemCount: EnAppointmentSection.values.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CircularWithSectionName(
              currentSection: EnAppointmentSection.values[index],
              isCurrent: currentSection == EnAppointmentSection.values[index],
              // this logic to define wither CircularWithSectionName is based or not
              isBased: EnAppointmentSection.values[index].index <
                  currentSection.index,
            ),
          ),
        );
      },
    );
  }
}
