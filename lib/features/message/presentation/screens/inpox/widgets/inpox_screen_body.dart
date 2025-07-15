import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/navigation_cubit/navigation_cubit.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/coustom_app_bar_with_search.dart';
import 'package:medi_book/features/message/presentation/screens/inpox/widgets/create_new_messge_bottom_sheet_body.dart';
import 'package:medi_book/features/message/presentation/screens/inpox/widgets/inpox_list_view.dart';

class InpoxScreenBody extends StatelessWidget {
  const InpoxScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        NormalAppBarForSearch(
          title: 'Message',
          widgetBox: InkWell(
              onTap: () => createNewMessgeBottomSheet(context),
              child: SvgPicture.asset('assets/svgs/create_new messages.svg')),
          svgPathForTHeSecondRow: "assets/svgs/sort.svg",
          onWidgetBoxTap: () {},
          onChanged: (_) => {},
          searchController: TextEditingController(),
          color: ColorsManager.backgroundWhite,
          hintText: 'Search for a message',
        ),
        verticalSpace(24),
        const InpoxListView(),
      ],
    ));
  }
}

Future<void> createNewMessgeBottomSheet(BuildContext context) async {
  context.read<NavigationCubit>().toggleShowen();
  await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    enableDrag: false,
    backgroundColor: Colors.transparent,
    builder: (_) {
      return CreateNewMessgeBottomSheetBody();
    },
  );
  // ignore: use_build_context_synchronously
  context.read<NavigationCubit>().toggleShowen();
}
