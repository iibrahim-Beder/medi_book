part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isTyping,
    required bool isRecording,
    required bool hasPermission,
    required Duration recordingDuration, // Current session
    required Duration totalRecordingDuration, // Accumulated across sessions
    String? recordingPath,
  }) = _ChatState;

  factory ChatState.initial() => const ChatState(
        isTyping: false,
        isRecording: false,
        hasPermission: false,
        recordingDuration: Duration.zero,
        totalRecordingDuration: Duration.zero,
        recordingPath: null,
      );
}
