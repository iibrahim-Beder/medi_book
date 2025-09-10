import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/arrow_back_box_and_address.dart';
import 'package:medi_book/core/widgets/custom_button.dart';
import 'package:medi_book/core/widgets/custom_text_field.dart';
import 'package:medi_book/features/book_appointment/presentation/screens/book_appointment_screen/widgets/custom_appointment_type_row.dart';

class LanguageScreenBody extends StatelessWidget {
  const LanguageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: ArrowBackBoxAndAddress(
                title: 'Language',
              ),
            ),
            verticalSpace(50),
            CustomTextField(
              prefixIcon: SvgPicture.asset(
                "assets/svgs/search.svg",
                fit: BoxFit.none,
              ),
              hintText: 'Search',
              validator: (String? value) {},
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 10.h,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: const BorderSide(
                  color: ColorsManager.text30,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: const BorderSide(
                  color: ColorsManager.text50,
                ),
              ),
            ),
            verticalSpace(40),
            Expanded(
              child: ListView.builder(
                itemCount: supportedLanguageNames.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: SizedBox(
                      height: 45.h,
                      child: ImageTitleWithDivider(
                        title: supportedLanguageNames[index],
                        onTap: (value) {},
                        selectedValue: 'Arabic',
                        index: 0,
                        isHasRadio: true,
                      ),
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                textValue: 'Save',
                voidCallback: () {
                  context.pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
