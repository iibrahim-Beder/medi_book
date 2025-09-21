import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:medi_book/features/message/domain/entities/message.dart';
import 'package:medi_book/features/message/domain/usecases/get_chats_list_use_case.dart';
import 'package:medi_book/features/message/domain/usecases/get_messages_stream_use_case.dart';
import 'package:medi_book/features/message/domain/usecases/send_message_use_case.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:audio_waveforms/audio_waveforms.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({
    required this.getMessagesStreamUseCase,
    required this.sendMessageUseCase,
    required this.getChatsListUseCase,
  }) : super(ChatState.initial());

  final RecorderController _recorderController = RecorderController();
  RecorderController get recorderController => _recorderController;

  final PlayerController _playerController = PlayerController();
  PlayerController get playerController => _playerController;

  // Use Cases
  final GetMessagesStreamUseCase getMessagesStreamUseCase;
  final SendMessageUseCase sendMessageUseCase;
  final GetChatsListUseCase getChatsListUseCase;

  StreamSubscription<List<Message>>? _messagesSubscription;

  Timer? _recordingTimer;
  final List<String> recordedChunks = [];
  final player = AudioPlayer();


  Future<void> initializeRecorder() async {
    final permission = await Permission.microphone.request();
    if (!permission.isGranted) {
      emit(state.copyWith(hasPermission: false));
      return;
    }

    _recorderController
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..sampleRate = 44100;

    emit(state.copyWith(hasPermission: true));
  }

  // --- تغيير وضع التسجيل ---
  void updateMode(Mode mode) {
    emit(state.copyWith(mode: mode));
  }

  Future<void> _prepareWaveform(String path) async {
    try {
      await _playerController.extractWaveformData(path: path);
    } catch (e) {
      print("❌ Error extracting waveform: $e");
    }
  }

  // --- بدء التسجيل الصوتي ---
  Future<void> startRecording() async {
    emit(state.copyWith(
      mode: Mode.recording,
      recordingDuration: Duration.zero,
      totalRecordingDuration: Duration.zero,
      recordingPath: null,
    ));

    await _recorderController.record();

    _recordingTimer?.cancel();
    _recordingTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final newDuration = state.recordingDuration + const Duration(seconds: 1);
      emit(state.copyWith(recordingDuration: newDuration));
    });
  }

  // --- إيقاف التسجيل مؤقتاً ---
  Future<void> pauseRecording() async {
    final path = await _recorderController.stop();

    if (path != null && path.isNotEmpty) {
      await _prepareWaveform(path);

      final tempDir = await getTemporaryDirectory();
      final fileName = 'recording_${DateTime.now().millisecondsSinceEpoch}.m4a';
      final newPath = '${tempDir.path}/$fileName';

      final originalFile = File(path);
      final newFile = await originalFile.copy(newPath);

      recordedChunks.add(newFile.path);

      print("✅ Recorded chunk saved to temporary directory: ${newFile.path}");
    } else {
      print("❌ No path returned from recorder");
    }

    _recordingTimer?.cancel();

    print("** *** **");
    print(recordedChunks.last);

    emit(state.copyWith(
      mode: Mode.paused,
      recordingPath: recordedChunks.isNotEmpty ? recordedChunks.last : null,
      totalRecordingDuration:
          state.totalRecordingDuration + state.recordingDuration,
      recordingDuration: Duration.zero,
    ));
  }

  Future<void> cancelRecording() async {
    _recordingTimer?.cancel();

    final path = await _recorderController.stop();

    if (path != null && path.isNotEmpty) {
      final file = File(path);
      if (await file.exists()) {
        await file.delete();
        print('🗑️ Recording cancelled and file deleted at $path');
      }
    }

    emit(state.copyWith(
      mode: Mode.initial,
      recordingPath: null,
      recordingDuration: Duration.zero,
      totalRecordingDuration: Duration.zero,
    ));
  }

  // --- تشغيل ملف صوتي مسجل ---
  Future<void> playRecordedChunk(String filePath) async {
    try {
      await playerController.preparePlayer(
        path: filePath,
        shouldExtractWaveform: true,
      );
      await playerController.startPlayer();
    } catch (e) {
      print("❌ Error playing recorded chunk: $e");
    }
  }

  Future<void> requestMicrophonePermission() async {
    var status = await Permission.microphone.status;
    if (status.isDenied) {
      status = await Permission.microphone.request();
      if (status.isGranted) {
        debugPrint('🎤 Microphone permission granted');
      } else {
        debugPrint('❌ Microphone permission denied');
      }
    } else if (status.isGranted) {
      debugPrint('✅ Microphone permission already granted');
    } else if (status.isPermanentlyDenied) {
      debugPrint('⚠️ Permission permanently denied. Open settings.');
      openAppSettings();
    }
  }

  // ----------------------
  // ==== Use Cases =======


  void listenToMessages(String chatId) {
    emit(state.copyWith(isLoadingMessages: true, messagesError: null));

    _messagesSubscription?.cancel();

    _messagesSubscription = getMessagesStreamUseCase(chatId).listen(
      (messages) {
        emit(state.copyWith(
          isLoadingMessages: false,
          messages: messages,
          messagesError: null,
        ));
      },
      onError: (error) {
        emit(state.copyWith(
          isLoadingMessages: false,
          messagesError: error.toString(),
        ));
      },
    );
  }

  Future<void> sendMessage(String chatId, Message message) async {
    try {
      await sendMessageUseCase(chatId, message);
    } catch (e) {
      emit(state.copyWith(messagesError: 'Failed to send message: $e'));
    }
  }

  Future<void> loadChatsList(String userId) async {
    emit(state.copyWith(isLoadingChatsList: true, chatsListError: null));
    try {
      final chatsList = await getChatsListUseCase(userId);
      emit(state.copyWith(
        isLoadingChatsList: false,
        chatsList: chatsList,
        chatsListError: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoadingChatsList: false,
        chatsListError: e.toString(),
      ));
    }
  }

  @override
  Future<void> close() {
    _messagesSubscription?.cancel();
    _recordingTimer?.cancel();
    player.dispose();
    return super.close();
  }
}
