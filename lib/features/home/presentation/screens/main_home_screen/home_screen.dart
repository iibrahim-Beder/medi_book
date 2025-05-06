import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/home/presentation/screens/main_home_screen/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreenBody(),
    );
  }
}
