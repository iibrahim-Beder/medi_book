import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/chat_bubble_list_view.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/chat_input_area.dart';

class TextMessageBubble extends StatelessWidget {
  const TextMessageBubble({
    super.key,
    required this.messages,
    required this.currentUser,
  });

  final List<ChatMessage> messages;
  final ChatUser currentUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatBubbleListView(messages: messages, currentUser: currentUser),
        const  ChatInputArea(),
      ],
    );
  }
}
