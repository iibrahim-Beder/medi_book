import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/chat_screen_body.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    readChats();
  }

  Future<void> readChats() async {
    print("***********************");
    try {
      QuerySnapshot querySnapshot = await firestore.collection('chats').get();

      for (var doc in querySnapshot.docs) {
        print('Chat ID: ${doc.id}');
        print('Data: ${doc.data()}');
      }
    } catch (e) {
      print('Error reading chats: ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatScreenBody(),
    );
  }
}
