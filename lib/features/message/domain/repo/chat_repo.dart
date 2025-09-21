import 'package:medi_book/features/message/domain/entities/message.dart';

abstract class ChatRepo {

  Stream<List<Message>> getMessagesStream({required String chatId});

  Future<void> sendMessage({required String chatId, required Message message});

  Future<List<String>> getChatsList({required String userId});
}
