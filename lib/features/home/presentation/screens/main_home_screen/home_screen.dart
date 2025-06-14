import 'package:flutter/material.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/back_to_top_button_bock_builder.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreenBody(),
      floatingActionButton: BackToTopButtonBockBuilder(),
    );
  }
}

