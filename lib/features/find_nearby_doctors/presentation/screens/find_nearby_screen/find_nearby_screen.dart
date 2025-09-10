
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/find_nearby_screen_body.dart';

class FindNearbyScreen extends StatelessWidget {
  const FindNearbyScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: FindNearbyScreenBody(),
    );
  }
}