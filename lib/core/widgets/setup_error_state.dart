import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/theming/styles.dart';

void setUpErrorState(BuildContext context, String error,
    {bool popContext = true}) {
   popContext ? context.pop() : null;

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white,
      icon: Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        style: TextStyles.font15Text100Medium.copyWith(color: Colors.black),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: TextStyles.font14MainBlueSemiBold,
          ),
        )
      ],
    ),
  );
}
