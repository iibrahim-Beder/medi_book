import 'package:flutter/material.dart';
import 'package:medi_book/features/notifications/presentation/views/widgets/notifications_screen_body.dart';
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: NotificationsScreenBody(),
    );
  }
}