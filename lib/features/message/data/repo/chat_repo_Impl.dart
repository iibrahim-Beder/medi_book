
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medi_book/features/message/data/mappers/message_mapper.dart';
import 'package:medi_book/features/message/data/models/message_model.dart';
import 'package:medi_book/features/message/domain/entities/message.dart';
import 'package:medi_book/features/message/domain/repo/chat_repo.dart';

class ChatRepoImpl implements ChatRepo {
  final FirebaseFirestore firestore;

  ChatRepoImpl(this.firestore);

  @override
  Stream<List<Message>> getMessagesStream({required String chatId}) {
    return firestore.collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy('timestamp', descending: false)
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        final model = MessageModel.fromJson(doc.data()..putIfAbsent('id', () => doc.id));
        return model.toEntity();
      }).toList();
    });
  }

  @override
  Future<void> sendMessage({required String chatId, required Message message}) async {
    final messageModel = MessageModel(
      id: '', 
      senderId: message.senderId,
      text: message.text,
      timestamp: message.timestamp.millisecondsSinceEpoch,
    );

    await firestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .add(messageModel.toJson());
  }

  @override
  Future<List<String>> getChatsList({required String userId}) async {
    final querySnapshot = await firestore
        .collection('chats')
        .where('participants', arrayContains: userId)
        .get();

    return querySnapshot.docs.map((doc) => doc.id).toList();
  }


}
