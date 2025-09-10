
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

void showRefreshingBanner(BuildContext context) {
  showSimpleNotification(
    Text('Refreshing...'),
    background: const Color.fromRGBO(33, 150, 243, 1),
    autoDismiss: true,
    duration: Duration(seconds: 2),
  );
}
