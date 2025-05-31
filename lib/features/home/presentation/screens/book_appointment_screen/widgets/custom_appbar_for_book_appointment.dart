import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/book_appointment_state.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/enums/en_appointment_section.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/circular_with_section_name_list_view.dart';

class CustomAppbarForBookAppointment extends StatelessWidget {
  const CustomAppbarForBookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookAppointmentCubit, BookAppointmentState,
            EnAppointmentSection>(
        selector: (state) => state.currentSection,
        builder: (context, currentSection) {
          return SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            scrolledUnderElevation: 0.0,
            toolbarHeight: 165.h,
            backgroundColor: ColorsManager.backgroundWhite,
            flexibleSpace: Column(children: [
              verticalSpace(30),
              ArrowBackBoxAndAddress(
                title: "Book Appointment",
                onTap: () {
                  // Here we will put the logic of back button
                  if (currentSection.index > 0) {
                    context
                        .read<BookAppointmentCubit>()
                        .currentAppointmentSection(EnAppointmentSection
                            .values[currentSection.index - 1]);
                  }
                },
              ),
              verticalSpace(32),
              CircularWithSectionNameListView(),
            ]),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Line(
                boxDecoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
              ),
            ),
          );
        });
  }
}
