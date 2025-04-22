import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class RecommendationDoctorAndSeeAll extends StatelessWidget {
  const RecommendationDoctorAndSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Recommendation Doctor",
          style: TextStyles.font14MainBlueSemiBold
              .copyWith(color: ColorsManager.text100, fontSize: 18),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "See All",
              style: TextStyles.font12Neutral60Regular
                  .copyWith(color: ColorsManager.mainBlue),
            ))
      ],
    );
  }
}
