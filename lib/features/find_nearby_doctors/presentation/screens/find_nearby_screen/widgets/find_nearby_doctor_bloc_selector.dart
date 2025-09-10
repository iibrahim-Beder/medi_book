import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/shimmer_loading/syncing_data_ui.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_cubit.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_state.dart';

class FindNearbyDoctorBlocSelector extends StatelessWidget {
  const FindNearbyDoctorBlocSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<FindNearbyDoctorCubit, FindNearbyDoctorState, bool>(
      selector: (state) => state.fetchedNearbyDoctorsState!.isFetching,
      builder: (context, state) {
        if (!state) return const SizedBox.shrink();
        return SyncingDataUi(
          baseColor: ColorsManager.mainBlue,
          highlightColor: ColorsManager.mainBlueDiluted,
          textColor: ColorsManager.mainBlueDarker,
          text: 'Loading...',
        );
      },
    );
  }
}
