import 'package:medi_book/features/message/domain/repo/chat_repo.dart';

class GetChatsListUseCase {
  final ChatRepo repository;

  GetChatsListUseCase(this.repository);

  Future<List<String>> call(String userId) {
    return repository.getChatsList(userId: userId);
  }
}
