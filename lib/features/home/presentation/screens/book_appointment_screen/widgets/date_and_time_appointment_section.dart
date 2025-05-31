import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/book_appointment_cubit/enums/en_appointment_section.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/appointment_type_list_view.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/available_time_grid_veiw.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/date_box_list_view_with_arrow_Icons.dart';

class DateAndTimeAppointmentSection extends StatelessWidget {
  const DateAndTimeAppointmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Text(
          "Select Date",
          style: TextStyles.font16Text100Bold.copyWith(
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        verticalSpace(24),
        const DateBoxListViewWithArrowIcons(),
        verticalSpace(24),
        Text(
          "Available time",
          style: TextStyles.font16Text100Bold.copyWith(
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        verticalSpace(24),
        const AvailableTimeGridVeiw(),
        verticalSpace(24),
        Text(
          "Appointment Type",
          style: TextStyles.font16Text100Bold.copyWith(
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        verticalSpace(24),
        const AppointmentTypeListView(),
        CustomButton(
          textValue: 'Continue',
          voidCallback: () {
            // Update current appointment section by emit the the new state with the new section
            context.read<BookAppointmentCubit>().currentAppointmentSection(EnAppointmentSection.payment);
          },
        ),
      ]),
    );
  }
}
