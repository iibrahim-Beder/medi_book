import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/filter_state.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_cubit.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_state.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/find_nearby_bottom_sheet.dart';

Future<void> findNearbyBottomSheetForBlocBuilder(
    BuildContext context, double height) async {
  final cubit = context.read<FindNearbyDoctorCubit>();

  final FilterState? result = await showModalBottomSheet<FilterState>(
    barrierColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    enableDrag: false,
    backgroundColor: ColorsManager.backgroundWhite,
    builder: (_) {
      return BlocProvider.value(
          value: cubit,
          child:
              FindNearbyBottomSheet(
                height: height,
              ));
    },
  );

  // if (result != null) {
  //   cubit.updateSelectedSpecialityIndex(
  //     result.selectedSpecialityIndex,
  //   );
  //   cubit.updateSelectedRatingIndex(result.selectedRatingIndex);
  // }
}

class NearbyDoctorsLauncherBlocListener extends StatelessWidget {
  const NearbyDoctorsLauncherBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FindNearbyDoctorCubit, FindNearbyDoctorState>(
      listenWhen: (previous, current) =>
          previous.fetchedNearbyDoctorsState!.isFetching &&
          !current.fetchedNearbyDoctorsState!.isFetching,
      listener: (context, state) async {
        if (state.fetchedNearbyDoctorsState!.isFetching) {
          await findNearbyBottomSheetForBlocBuilder(context, 0.7);
        }
      },
      child: SizedBox.shrink(), 
    );
  }
}

