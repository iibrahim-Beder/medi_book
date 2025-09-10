import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medi_book/core/theming/colors.dart';

Widget newMessageBadge(int count) {
  return Container(
    padding: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: ColorsManager.mainBlue,
      shape: BoxShape.circle,
    ),
    constraints: const BoxConstraints(
      minWidth: 24,
      minHeight: 24,
    ),
    alignment: Alignment.center,
    child: Text(
      '$count',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
