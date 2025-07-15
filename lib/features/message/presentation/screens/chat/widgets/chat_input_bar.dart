
import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/chat_Input_field.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/voice_recorder_button.dart';

class ChatInputBar extends StatelessWidget {
  const ChatInputBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: ColorsManager.backgroundWhite,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: const Offset(0, 6),
            blurRadius: 12,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          const Expanded(child: ChatInputField()),
          horizontalSpace(12),
          const VoiceRecorderButton(),
        ],
      ),
    );
  }
}
