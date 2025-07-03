import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/circular_with_section_name_list_view.dart';

class CustomAppbarForBookAppointment extends StatelessWidget {
  const CustomAppbarForBookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookAppointmentCubit, BookAppointmentState, EnAppointmentSection>(
      selector: (state) => state.currentSection,
      builder: (context, currentSection) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: ColorsManager.backgroundWhite,
              padding: EdgeInsets.only(top: 30.h, left: 16.w, right: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArrowBackBoxAndAddress(
                    title: "Book Appointment",
                    onTap: () {
                      if (currentSection.index > 0) {
                        context.read<BookAppointmentCubit>().updateCurrentAppointmentSection(
                              EnAppointmentSection.values[currentSection.index - 1],
                            );
                      } else {
                        context.pop();
                      }
                    },
                  ),
                  verticalSpace(32),
                  CircularWithSectionNameListView(),
                ],
              ),
            ),
            Line(
              boxDecoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
            ),
          ],
        );
      },
    );
  }
}
