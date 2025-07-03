import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/book_appointment/data/models/doctor_time_slot.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/custom_time_slot_boutton.dart';

class AvailableTimeSlotsGridVeiw extends StatelessWidget {
  const AvailableTimeSlotsGridVeiw({super.key});
  @override

  Widget build(BuildContext context) {
    final List<DoctorTimeSlot> timeSlots = context.read<BookAppointmentCubit>().state.doctorDayTimeSlotsState.data ?? [];
    return BlocSelector<BookAppointmentCubit, BookAppointmentState, DoctorTimeSlot>(
        selector: (state) => state.selectedTimeSlot!,
        builder: (context, selectedTimeSlot) {
          return GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 12.h,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 3,
              padding: EdgeInsets.all(16),
              children: List.generate(timeSlots.length, (index) {
                return CustomTimeSlotBoutton(
                  timeSlot: timeSlots[index],
                  isSelected: selectedTimeSlot == timeSlots[index],
                  // update the selected time slot by emitting a new state
                  onTap: (timeSlot) => context
                      .read<BookAppointmentCubit>()
                      .updateSelectedTimeSlot(timeSlot),
                );
              }));
        });
  }
}

