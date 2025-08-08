import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// Instance of the notification plugin
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationsScreenBody extends StatelessWidget {
  const NotificationsScreenBody({super.key});

  // Function to show a local notification
  Future<void> showLocalNotification() async {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'appointment_channel', // Channel ID
      'Appointment Notifications', // Channel name
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
    );

    // Show the notification
    await flutterLocalNotificationsPlugin.show(
      0, // Notification ID
      'Appointment Confirmed!', // Notification title
      'Your appointment with Dr. Ahmed is scheduled for Thursday at 10 AM.', // Notification body
      notificationDetails,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: showLocalNotification,
        child: const Text('Show Notification'),
      ),
    );
  }
}
