import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/app_par_for_chat_page.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/text_message_bubble.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppParForChatPage(),
          Expanded(child: TextMessageBubble(messages: messages, currentUser: currentUser)),
        ],
      ),
    );
  }
}