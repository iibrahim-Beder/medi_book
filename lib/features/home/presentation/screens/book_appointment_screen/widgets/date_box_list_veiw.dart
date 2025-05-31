import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/custom_date_box.dart';

class DateBoxListVeiw extends StatelessWidget {
  const DateBoxListVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookAppointmentCubit, BookAppointmentState>(
        buildWhen: (previous, current) =>
            previous.selectedDay != current.selectedDay,
        builder: (context, state) {
          // Case [1]: Automatically jump to the selected day after the widget is built
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final selectedIndex = daysList.indexOf(state.selectedDay);
            state.carouselController.animateToPage(selectedIndex);
          });

           final List<Widget> customDateBoxList = List.generate(
              daysList.length,
              (index) => CustomDateBox(
                    day: daysList[index],
                    onTap: (day) {
                      // emit the new selected day
                      context.read<BookAppointmentCubit>().selectedDay(day);

                      // Case [2]: When a date is selected manually, jump to its position
                      state.carouselController.animateToPage(index);
                    },
                    isSelected: state.selectedDay == daysList[index],
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
