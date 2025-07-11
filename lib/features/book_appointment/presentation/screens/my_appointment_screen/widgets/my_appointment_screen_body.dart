import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/my_appointment_cubit/my_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/my_appointment_sections.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/my_appointment_screen/widgets/bloc_builder/text_with_line_button_block_selector.dart';

enum MyAppointmentType { upcoming, completed, cancelled }

class MyAppointmentScreenBody extends StatelessWidget {
  const MyAppointmentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MyAppointmentCubit>();
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
            child: ArrowBackBoxAndAddress(
              title: 'My Appointment',
              coustomWidget: GestureDetector(
                onTap: () {
                  context.pushNamed(
                    'searchMyAppointmentScreen',
                    extra: cubit.state.selectedSection,
                  );
                },
                child: SvgPicture.asset(
                  "assets/svgs/search_button.svg",
                ),
              ),
            ),
          ),
          TextWithLineButtonBlockSelector(),
          verticalSpace(10),
          MyAppointmentSections()
        ],
      ),
    );
  }
}
