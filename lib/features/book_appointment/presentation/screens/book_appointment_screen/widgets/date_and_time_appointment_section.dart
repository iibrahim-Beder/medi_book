import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/appointment_type_list_view.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/bloc_builder/available_date_grid_veiw_block_builder.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/bloc_builder/continue_button_block_selector.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/bloc_builder/date_box_list_view_block_builder.dart';

class DateAndTimeAppointmentSection extends StatelessWidget {
  const DateAndTimeAppointmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Select Date",
        style: TextStyles.font16Text100Bold.copyWith(
          fontWeight: FontWeightHelper.semiBold,
        ),
      ),
      verticalSpace(24),
      const DateBoxListViewBlockBuilder(),
      verticalSpace(24),
      Text(
        "Available time",
        style: TextStyles.font16Text100Bold.copyWith(
          fontWeight: FontWeightHelper.semiBold,
        ),
      ),
      verticalSpace(24),
      // block builder
      const AvailableTimeSlotsGridVeiwBlockBuilder(),
      verticalSpace(24),
      Text(
        "Appointment Type",
        style: TextStyles.font16Text100Bold.copyWith(
          fontWeight: FontWeightHelper.semiBold,
        ),
      ),
      verticalSpace(24),
      const AppointmentTypeListView(),
      const ContinueButtonBlockSelector(),
      const SetUpErrorStateBlockListener(),
    ]);
  }
}
