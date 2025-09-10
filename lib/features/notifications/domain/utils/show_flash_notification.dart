import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';

void showInAppNotification(BuildContext context) {
  Flushbar(
    title: "Success!",
    message: "You have an appointment in 1 hour. We'll send you a link to join the call at the booking details, so all you need is a computer or mobile device with a camera and an internet connection.",
    duration: const Duration(seconds: 10),
    backgroundColor: ColorsManager.notificationInfoColor,
    flushbarPosition: FlushbarPosition.TOP,
    borderRadius: BorderRadius.circular(16),
    margin: const EdgeInsets.all(8),
    
    icon: const Icon(
      Icons.info,
      color: Colors.white,
    ),
  ).show(context);
}
