part of 'chat_cubit.dart';
enum Mode {initial,typing, recording, paused}
@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required Mode mode,
    required bool hasPermission,
    required Duration recordingDuration, // Current session
    required Duration totalRecordingDuration, // Accumulated across sessions
    String? recordingPath,
  }) = _ChatState;

  factory ChatState.initial() => const ChatState(
        mode: Mode.initial,
        hasPermission: false,
        recordingDuration: Duration.zero,
        totalRecordingDuration: Duration.zero,
        recordingPath: null,
      );
}
