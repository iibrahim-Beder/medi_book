import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_cubit.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_state.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/specialitys_list_view.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/specialitys_shimmer_loading.dart';

class SpecialtiesBlocBuilder extends StatelessWidget {
  const SpecialtiesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainHomeCubit, MainHomeState>(
      buildWhen: (previous, current) =>
          previous.specialtiesState.isLoading !=
              current.specialtiesState.isLoading ||
          previous.specialtiesState.data != current.specialtiesState.data ||
          previous.specialtiesState.errorMessage !=
              current.specialtiesState.errorMessage,
      builder: (context, state) {
        if (state.specialtiesState.isLoading) {
          return SpecialtiesShimmerLoading();
        } else if (state.specialtiesState.data.isNotEmpty) {
          return SpecialtiesListView(specialties: state.specialtiesState.data);
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
