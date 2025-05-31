import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/features/home/presentation/screens/book_appointment_screen/widgets/date_box_list_veiw.dart';

class DateBoxListViewWithArrowIcons extends StatelessWidget {
  const DateBoxListViewWithArrowIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/svgs/left_arro.svg"),
        DateBoxListVeiw(),
        SvgPicture.asset("assets/svgs/right_arrow.svg"),
      ],
    );
  }
}
