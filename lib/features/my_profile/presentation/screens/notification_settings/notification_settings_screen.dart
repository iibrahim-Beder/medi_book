
import 'package:flutter/material.dart';
import 'package:medi_book/features/my_profile/presentation/screens/notification_settings/widgets/notification_settings_screen_body.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotificationSettingsScreenBody(),
    );
  }
}