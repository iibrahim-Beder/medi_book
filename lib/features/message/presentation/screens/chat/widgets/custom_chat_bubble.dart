import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';

class CustomChatBubble extends StatelessWidget {
  const CustomChatBubble({super.key, required this.msg, required this.isMine});

  final ChatMessage msg;
  final bool isMine;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7),
            decoration: BoxDecoration(
              color: isMine
                  ? ColorsManager.mainBlue
                  : ColorsManager.backgroundWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isMine ? 16 : 0),
                topRight: Radius.circular(isMine ? 0 : 16),
                bottomLeft: const Radius.circular(16),
                bottomRight: const Radius.circular(16),
              ),
            ),
            child: Text(
              msg.text,
              style: TextStyle(
                color: isMine ? Colors.white : Colors.black87,
              ),
            ),
          ),
        ),
        verticalSpace(12),
        Align(
          alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
          child: Text(
            _formatTime(msg.createdAt),
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}

String _formatTime(DateTime time) {
  final hour = time.hour.toString().padLeft(2, '0');
  final minute = time.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}
