import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/custom_time_slot_boutton.dart';

class AvailableTimeGridVeiw extends StatelessWidget {
  const AvailableTimeGridVeiw({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookAppointmentCubit, BookAppointmentState, String>(
        selector: (state) => state.selectedTimeSlot,
        builder: (context, selectedTimeSlot) {
          return GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 12.h,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 3,
              padding: EdgeInsets.all(16),
              children: List.generate(timesList.length, (index) {
                return CustomTimeSlotBoutton(
                  timeSlot: timesList[index],
                  isSelected: selectedTimeSlot == timesList[index],
                  // update the selected time slot by emitting a new state
                  onTap: (timeSlot) => context
                      .read<BookAppointmentCubit>()
                      .selectedTimeSlot(timeSlot),
                );
              }));
        });
  }
}
