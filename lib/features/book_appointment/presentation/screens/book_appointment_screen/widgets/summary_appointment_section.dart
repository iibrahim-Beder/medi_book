import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/booking_Information_widget.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/custom_appointment_type_row.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/doctor_Information_widget.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/helpers.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/nearby_button.dart';

class SummaryAppointmentSection extends StatelessWidget {
  const SummaryAppointmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookingInformationWidget(),
        DoctorInformationWidget(doctor: context.read<BookAppointmentCubit>().doctor!,),
        Text(
          "Payment Information",
          style: TextStyles.font16Text100Bold
              .copyWith(fontWeight: FontWeightHelper.semiBold),
        ),
        verticalSpace(15),
        SizedBox(
          height: 58.h,
          child: ImageTitleWithDivider(
            title: 'Paypal',
            imagePath: 'assets/svgs/paypal.svg',
            subtitle1: '***** ***** ***** 37842',
            isHasRadio: false,
            button: CustomSmallButton(
              is3DRemark: false,
              colorOfRadius: ColorsManager.mainBlue,
              title: 'Change',
            ),
          ),
        ),
        verticalSpace(10),
        CustomButton(
          textValue: 'Continue',
          voidCallback: () {
            showPaymentInfoBottomSheetBody(context);
          },
        ),
      ],
    );
  }
}


