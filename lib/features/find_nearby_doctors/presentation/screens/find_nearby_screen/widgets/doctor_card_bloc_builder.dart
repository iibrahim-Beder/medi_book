// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:medi_book/core/theming/colors.dart';
// import 'package:medi_book/core/widgets/doctors_list_veiwI_tem.dart';
// import 'package:medi_book/features/location/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_cubit.dart';
// import 'package:medi_book/features/location/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_state.dart';

// class DoctorCardBlocBuilder extends StatelessWidget {
//   const DoctorCardBlocBuilder({
//     super.key,
//   });

//   @override
// /*************  ✨ Windsurf Command ⭐  *************/
//   /// Returns a [DoctorsListViewItemAPI] when [FindNearbyDoctorCubit.doctorCardVisible] is true and
//   /// [FindNearbyDoctorCubit.selectedDoctor] is not null. Otherwise, returns a [SizedBox.shrink].
//   ///
//   /// The [DoctorsListViewItemAPI] is built with the selected doctor's information and the
//   /// [ColorsManager.backgroundWhite] color. The widget is also wrapped with a padding of 5.w
//   /// vertically and 8.w horizontally. The image size is set to 73.
// /*******  93efbe51-ca14-4994-9159-f9da8360ef76  *******/
//   Widget build(BuildContext context) {
//     return BlocBuilder<FindNearbyDoctorCubit, FindNearbyDoctorState>(
//       buildWhen: (previous, current) =>
//           previous.doctorCardVisible != current.doctorCardVisible ||
//           previous.selectedDoctor != current.selectedDoctor,
//       builder: (context, state) {
//         if (state.doctorCardVisible && state.selectedDoctor != null) {
//           return DoctorsListViewItemAPI(
//             color: ColorsManager.backgroundWhite,
//             padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 8.w),
//             doctorInfo: context.read<FindNearbyDoctorCubit>().state.selectedDoctor!,
//             impageSize: 73,
//           );
//         } else {
//           return const SizedBox.shrink();
//         }
//       },
//     );
//   }
// }
