import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/home/routes/home_routes.dart';

class DoctorSpecialityAndSeeAll extends StatelessWidget {
  const DoctorSpecialityAndSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Doctor Speciality",
          style: TextStyles.font14MainBlueSemiBold
              .copyWith(color: ColorsManager.text100, fontSize: 18),
        ),
        TextButton(
            onPressed: () {

              context.pushNamed(HomeRoutes.doctorsSpecialityScreen);
            },
            child: Text(
              "See All",
              style: TextStyles.font12Neutral60Regular
                  .copyWith(color: ColorsManager.mainBlue),
            ))
      ],
    );
  }
}
