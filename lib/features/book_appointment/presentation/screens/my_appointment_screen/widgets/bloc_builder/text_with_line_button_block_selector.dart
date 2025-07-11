
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/my_appointment_cubit/my_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/my_appointment_cubit/my_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/my_appointment_screen_body.dart';
import 'package:medi_book/features/doctor_details/presentation/screen/widgets/text_with_Line_button_list_view.dart';

class TextWithLineButtonBlockSelector extends StatelessWidget {
  const TextWithLineButtonBlockSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MyAppointmentCubit>();
    return BlocSelector<MyAppointmentCubit, MyAppointmentState, MyAppointmentType>(
      selector: (state) => state.selectedSection,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: TextWithLineButtonListView(
            selectedSectionIndex: state.index,
            data: MyAppointmentType.values
                .map((e) => e.name[0].toUpperCase() + e.name.substring(1))
                .toList(),
            onTap: (int index) {
              cubit.updateSelectionIntent(MyAppointmentType.values[index]);
            },
          ),
        );
      },
    );
  }
}
