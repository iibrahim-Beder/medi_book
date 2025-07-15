import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/features/message/presentation/screens/inpox/widgets/new_message_contact_list.dart';

class CreateNewMessgeBottomSheetBody extends StatelessWidget {
  const CreateNewMessgeBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.backgroundWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
      height: MediaQuery.of(context).size.height * 0.95,
      width: double.infinity,
      child: Column(
        children: [
          verticalSpace(25),
          NormalAppBarForSearch(
            title: 'Create New Message',
            widgetBox: SizedBox.shrink(),
            svgPathForTHeSecondRow: "assets/svgs/sort.svg",
            onWidgetBoxTap: () {},
            onChanged: (_) => {},
            searchController: TextEditingController(),
            color: ColorsManager.backgroundWhite,
            hintText: 'Search for a message',
            leftWidget: InkWell(
                onTap: () => context.pop(),
                child: SvgPicture.asset('assets/svgs/close.svg')),
          ),
          verticalSpace(24),
          NewMessageContactList()
        ],
      ),
    );
  }
}
