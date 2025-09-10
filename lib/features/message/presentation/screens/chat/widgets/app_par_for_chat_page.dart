
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/font_weight_helper.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/coustom_Image_box.dart';
class AppParForChatPage extends StatelessWidget {
  const AppParForChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: ColorsManager.backgroundWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03), 
            offset: const Offset(0, 5),             
            blurRadius: 10,                         
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CoustomImageBox(
              svgPath: "assets/svgs/arrow_back.svg",
              onTap: () => context.pop(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dr. Randy Wigham',
                  style: TextStyles.font14TextBodyRegular.copyWith(
                    color: ColorsManager.text100,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Online',
                  style: TextStyles.font13Text100Regular.copyWith(
                    color: ColorsManager.text80,
                    fontSize: 12,
                    fontWeight: FontWeightHelper.semiBold,
                  ),
                ),
              ],
            ),
            SvgPicture.asset('assets/svgs/video_call_chat_icon.svg')
          ],
        ),
      ),
    );
  }
}
