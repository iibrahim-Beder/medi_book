import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/widgets/search/search_bottom_sheet_body.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_cubit.dart';

void showSearchOptionsBottomSheet(BuildContext context) {
   final cubit = context.read<SearchDoctorCubit>();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    enableDrag: false,
    backgroundColor: Colors.transparent,
    builder: (_) {
      return BlocProvider.value(
          value: cubit,
          child: const SearchBottomSheetBody());
    },
  );
}
