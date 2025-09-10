import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/features/home/routes/home_routes.dart';
import 'package:medi_book/features/message/presentation/screens/inpox/widgets/inpox_item.dart';

class InpoxListView extends StatelessWidget {
  const InpoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => InkWell(
          onTap: () => context.pushNamed(HomeRoutes.chatPageScreen),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: const InpoxItem(
              imagePath: 'assets/images/rendy.png',
              name: 'Dr. Randy Wigham',
              speciality: 'General Doctor',
              place: 'RSUD Gatot Subroto',
              time: '10:00 AM',
              message:
                  'Fine, I will do a check. Does the patient have a history of certain diseases?',
              numberOfNewMessage: 1,
            ),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
