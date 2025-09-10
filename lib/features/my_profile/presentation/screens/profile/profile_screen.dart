import 'package:flutter/material.dart';
import 'package:medi_book/features/my_profile/presentation/screens/profile/widgets/profile_screen_body.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyProfileScreenBody(),
    );
  }
}
