import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/helpers/show_search_options_bottom_sheet_for_find_nearby.dart';

class FilterLocationContainer extends StatelessWidget {
  const FilterLocationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap: () {
    //   showSearchOptionsBottomSheetForFindNearby(context);
    //   },  
    //   child: Container(
    //     height: 47.h,
    //     width: 47.w,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(12),
    //       color: ColorsManager.backgroundWhite,
    //     ),
    //     child: SvgPicture.asset(
    //       'assets/svgs/filter_location.svg',
    //       fit: BoxFit.scaleDown,
    //     ),
    //   ),
    // );
    return SizedBox.shrink();
    
  }
}


// Future<void> showSearchOptionsBottomSheet(BuildContext context) async {
//   final cubit = context.read<FindNearbyDoctorCubit>();

//   await showModalBottomSheet<bool>(
//     context: context,
//     isScrollControlled: true,
//     enableDrag: false,
//     backgroundColor: Colors.transparent,
//     builder: (_) {
//       return BlocProvider.value(
//         value: cubit,
//         child: SearchBottomSheetBodyy(),
//       );
//     },
//   );
    
  
// }






// class SearchBottomSheetBodyy extends StatelessWidget {
//   SearchBottomSheetBodyy({super.key});

//   final ItemScrollController _spicialityItemCtr = ItemScrollController();
//   final ItemScrollController _ratingItemCtr = ItemScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//           decoration: BoxDecoration(
//               color: ColorsManager.backgroundWhite,
//               borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
//           height: MediaQuery.of(context).size.height * 0.6,
//           width: double.infinity,
//           child: Padding(
//             padding: EdgeInsets.only(left: 24.w),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 verticalSpace(55.h),
//                 Center(
//                   child: Text(
//                     "Sort By",
//                     style: TextStyles.font18Text100semiBold,
//                   ),
//                 ),
//                 verticalSpace(16.h),
//                 Padding(
//                   padding: EdgeInsets.only(right: 24.w),
//                   child: Line(
//                     boxDecoration: BoxDecoration(
//                       color: Colors.grey.shade200,
//                     ),
//                   ),
//                 ),
//                 verticalSpace(24.h),
//                 Text(
//                   "Speciality",
//                   style: TextStyles.font16Text100Bold
//                       .copyWith(fontWeight: FontWeightHelper.medium),
//                 ),
//                 verticalSpace(24.h),
//                 SpecialityButtonListView(
//                   onPressed: (value) {
                    
//                   },
//                   spIndex: 0,
//                   spCtrl: _spicialityItemCtr,
                
//                 ),
//                 verticalSpace(24.h),
//                 Text(
//                   "Rating",
//                   style: TextStyles.font16Text100Bold
//                       .copyWith(fontWeight: FontWeightHelper.medium),
//                 ),
//                 verticalSpace(24.h),
//                 RatingButtonListView(
//                   onPressed: (value) {
                    
//                   },
//                   ratingIndex:0,
//                   itemScrollController: _ratingItemCtr,
//                 ),
//                 verticalSpace(48.h),
//                 Padding(
//                   padding: EdgeInsets.only(right: 24.w),
//                   child: CustomButton(
//                     textValue: "Done",
//                     voidCallback: () {
//                       context.pop();
//                     },
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       }

    
//   }
