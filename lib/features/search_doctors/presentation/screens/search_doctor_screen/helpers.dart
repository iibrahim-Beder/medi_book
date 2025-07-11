import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/navigation_cubit/navigation_cubit.dart';
import 'package:medi_book/core/widgets/search/search_bottom_sheet_body.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';
Future<void> showSearchOptionsBottomSheet(BuildContext context) async {
  final cubit = context.read<SearchDoctorCubit>();

  await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    enableDrag: false,
    backgroundColor: Colors.transparent,
    builder: (_) {
      return BlocProvider.value(
        value: cubit,
        child: SearchBottomSheetBody(),
      );
    },
  );
    // ignore: use_build_context_synchronously
    context.read<NavigationCubit>().toggleShowen();
  
}
