import 'package:medi_book/features/message/domain/entities/message.dart';
import 'package:medi_book/features/message/domain/repo/chat_repo.dart';

class GetMessagesStreamUseCase {
  final ChatRepo repository;

  GetMessagesStreamUseCase(this.repository);

  Stream<List<Message>> call(String chatId) {
    return repository.getMessagesStream(chatId: chatId);
  }
}
