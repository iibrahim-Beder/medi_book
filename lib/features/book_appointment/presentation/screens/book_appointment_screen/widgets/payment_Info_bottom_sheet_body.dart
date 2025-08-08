import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/features/book_appointment/presentation/manger/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_cubit.dart';

class PaymentInfoBottomSheetBody extends StatelessWidget {
  const PaymentInfoBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.backgroundWhite,
          borderRadius: BorderRadius.circular(20)),
      height: MediaQuery.of(context).size.height * 0.36.h,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(44.h),
            Text(
              "Payment Info",
              style: TextStyles.font16Text100Bold.copyWith(
                fontWeight: FontWeightHelper.semiBold,
                fontSize: 14,
              ),
            ),
            verticalSpace(32),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Subtotal',
                style: TextStyles.font14TextBodyRegular,
              ),
              Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Text(
                  "\$4694",
                  style: TextStyles.font16Text100Bold.copyWith(
                    fontWeight: FontWeightHelper.semiBold,
                    fontSize: 14,
                  ),
                ),
              ),
            ]),
            verticalSpace(12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Tax',
                style: TextStyles.font14TextBodyRegular,
              ),
              Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Text(
                  "\$250",
                  style: TextStyles.font16Text100Bold.copyWith(
                    fontWeight: FontWeightHelper.semiBold,
                    fontSize: 14,
                  ),
                ),
              ),
            ]),
            verticalSpace(24),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Payment Total',
                style: TextStyles.font16Text100Bold
                    .copyWith(fontWeight: FontWeightHelper.semiBold),
              ),
              Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Text(
                  "\$4944",
                  style: TextStyles.font16Text100Bold.copyWith(
                    fontWeight: FontWeightHelper.semiBold,
                  ),
                ),
              ),
            ]),
            verticalSpace(24),
            Padding(
              padding: EdgeInsets.only(right: 24.w),
              child: CustomButton(
                textValue: 'Book Now',
                voidCallback: () {
                context.pushReplacement(
                '/confirmationScreen',
                extra: context.read<BookAppointmentCubit>().doctor,
              );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
