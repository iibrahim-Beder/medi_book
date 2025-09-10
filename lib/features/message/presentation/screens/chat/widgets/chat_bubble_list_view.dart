
import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/custom_chat_bubble.dart';

class ChatBubbleListView extends StatelessWidget {
  const ChatBubbleListView({
    super.key,
    required this.messages,
    required this.currentUser,
  });

  final List<ChatMessage> messages;
  final ChatUser currentUser;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: ColorsManager.primarySurface,
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          reverse: true, // optional: keeps newest messages at bottom
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final msg = messages[index];
            final isMine = msg.author.id == currentUser.id;
            return CustomChatBubble(
              msg: msg,
              isMine: isMine,
            );
          },
        ),
      ),
    );
  }
}
