import 'package:flutter/material.dart';
import 'package:medi_book/features/home/presentation/views/widgets/home_top_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              HomeTopBar(),
            ])),
          )
        ],
      ),
    );
  }
}
