import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/custom_appointment_type_row.dart';

class AppointmentTypeListView extends StatelessWidget {
  const AppointmentTypeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookAppointmentCubit, BookAppointmentState,AppointmentType>(
      selector: (state) => state.selectedType,
        builder: (context, selectedAppointmentType) {
      return GridView.count(
        crossAxisCount: 1,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 5,
        padding: EdgeInsets.all(16),
        children: List.generate(appointmentTypeList.length, (index) {
          return ImageTitleWithDivider(
            imagePath: appointmentTypeList[index].imagePath,
            title: appointmentTypeList[index].typeName,
            onTap: (value) {
              // emit selected appointment type
              context
                  .read<BookAppointmentCubit>()
                  .updateSelectAppointmentType(appointmentTypeList[value]);
            },
            selectedValue: selectedAppointmentType.typeName,
            index: index,
          );
        }),
      );
    });
  }
}
