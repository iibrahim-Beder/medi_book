import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/custom_date_box.dart';

class DateBoxListVeiw extends StatelessWidget {
  const DateBoxListVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookAppointmentCubit, BookAppointmentState>(
        buildWhen: (previous, current) =>
            previous.seletedDay != current.seletedDay,
        builder: (context, state) {
          final cubit = context.read<BookAppointmentCubit>();
          final availableDays = cubit.state.doctorAvailableDaysState.data!;
          final seletedDay = cubit.state.seletedDay;
          // Case [1]: Automatically jump to the selected day after the widget is built
          WidgetsBinding.instance.addPostFrameCallback((_) {
            state.carouselController.animateToPage(seletedDay!.index);
          });

          final List<Widget> customDateBoxList = List.generate(
              availableDays.length,
              (index) => CustomDateBox(
                    day: availableDays[index],
                    onTap: (day) {
                      if (day == seletedDay) return;
                      cubit ..fetchDoctorDayTimeSlots(day.day)
                            ..updateSelectedDay(day);
                    },
                    isSelected: seletedDay == availableDays[index],
                  ));

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CarouselSlider(
                carouselController: state.carouselController,
                options: CarouselOptions(
                  height: 65.h,
                  enlargeFactor: 0.17,
                  enlargeCenterPage: true,
                  viewportFraction: 0.2,
                  enableInfiniteScroll: false,
                ),
                items: customDateBoxList,
              ),
            ),
          );
        });
  }
}
