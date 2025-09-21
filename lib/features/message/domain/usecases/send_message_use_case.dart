import 'package:medi_book/features/message/domain/entities/message.dart';
import 'package:medi_book/features/message/domain/repo/chat_repo.dart';

class SendMessageUseCase {
  final ChatRepo repository;

  SendMessageUseCase(this.repository);

  Future<void> call(String chatId, Message message) {
    return repository.sendMessage(chatId: chatId, message: message);
  }
}
