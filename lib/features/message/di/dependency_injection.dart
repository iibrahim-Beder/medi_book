import 'package:get_it/get_it.dart';
import 'package:medi_book/features/message/data/repo/chat_repo_Impl.dart';
import 'package:medi_book/features/message/domain/repo/chat_repo.dart';
import 'package:medi_book/features/message/domain/usecases/get_chats_list_use_case.dart';
import 'package:medi_book/features/message/domain/usecases/get_messages_stream_use_case.dart';
import 'package:medi_book/features/message/domain/usecases/send_message_use_case.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';

Future<void> initMessageFeature(GetIt getIt) async {
  getIt.registerLazySingleton<ChatRepo>(() => ChatRepoImpl(getIt()));
  getIt.registerLazySingleton<GetMessagesStreamUseCase>(
    () => GetMessagesStreamUseCase(getIt<ChatRepo>()),
  );

  getIt.registerLazySingleton<SendMessageUseCase>(
    () => SendMessageUseCase(getIt<ChatRepo>()),
  );

  getIt.registerLazySingleton<GetChatsListUseCase>(
    () => GetChatsListUseCase(getIt<ChatRepo>()),
  );

  getIt.registerLazySingleton<ChatCubit>(() => ChatCubit(
      getMessagesStreamUseCase: getIt(),
      sendMessageUseCase: getIt(),
      getChatsListUseCase: getIt()));
}
