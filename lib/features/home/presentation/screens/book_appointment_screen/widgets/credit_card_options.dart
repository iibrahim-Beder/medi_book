import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/custom_appointment_type_row.dart';

class CreditCardOptions extends StatelessWidget {
  const CreditCardOptions({super.key});

  @override
  Widget build(BuildContext context) {
      return GridView.count(
    
        crossAxisCount: 1,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 6,
        padding: EdgeInsets.only(left: 16.w,right: 16.w,),
        children: List.generate(criticalityOptionList.length, (index) {
          return ImageTitleWithDivider(
            imagePath: criticalityOptionList[index].imagePath,
            title: criticalityOptionList[index].Name,
            selectedValue: '',
            index: index,
            isHasRadio: false,
          );
        }),
      );
  }
}