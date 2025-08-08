import 'package:flutter/material.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/chat_screen_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatScreenBody(),
    );
  }
}
