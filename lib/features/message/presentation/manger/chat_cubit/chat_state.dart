part of 'chat_cubit.dart';

enum Mode {
  initial,
  typing,
  recording,
  paused,
}

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required Mode mode,
    required bool hasPermission,
    @Default(Duration.zero) Duration recordingDuration,
    @Default(Duration.zero) Duration totalRecordingDuration,
    String? recordingPath,
    @Default([]) List<Message> messages,
    String? messagesError,
    @Default(false) bool isLoadingMessages,
    @Default([]) List<String> chatsList,
    String? chatsListError,
    @Default(false) bool isLoadingChatsList,
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
    mode: Mode.initial,
    hasPermission: false,
  );
}
