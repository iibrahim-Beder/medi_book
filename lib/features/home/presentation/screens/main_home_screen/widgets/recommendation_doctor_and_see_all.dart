import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/routes/home_routes.dart';

class RecommendationDoctorsAndSeeAll extends StatelessWidget {
  const RecommendationDoctorsAndSeeAll({super.key});

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
            onPressed: () {
              var specialties = context.read<MainHomeCubit>().state.specialtiesState.data;
              context.pushNamed(HomeRoutes.searchDoctorScreen,extra: specialties);
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
