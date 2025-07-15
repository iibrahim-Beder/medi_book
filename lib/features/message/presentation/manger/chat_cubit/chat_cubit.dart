import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:audio_waveforms/audio_waveforms.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatState.initial());

  final RecorderController _recorderController = RecorderController();
  RecorderController get recorderController => _recorderController;

  Timer? _recordingTimer;
  final List<String> recordedChunks = []; // If merging later

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

  void updateTypingState(bool isTyping) {
    emit(state.copyWith(isTyping: isTyping));
  }

  Future<void> startRecording() async {
    emit(state.copyWith(
      isRecording: true,
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

  Future<void> pauseRecording() async {
    final path = await _recorderController.stop();
    recordedChunks.add(path ?? '');

    _recordingTimer?.cancel();

    emit(state.copyWith(
      isRecording: false,
      recordingPath: path,
      totalRecordingDuration: state.totalRecordingDuration + state.recordingDuration,
      recordingDuration: Duration.zero,
    ));
  }

  Future<void> resumeRecording() async {
    await _recorderController.record();

    emit(state.copyWith(
      isRecording: true,
      recordingDuration: Duration.zero,
    ));

    _recordingTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final newDuration = state.recordingDuration + const Duration(seconds: 1);
      emit(state.copyWith(recordingDuration: newDuration));
    });
  }

  Future<void> stopRecording() async {
    _recordingTimer?.cancel();
    final path = await _recorderController.stop();

    emit(state.copyWith(
      isRecording: false,
      recordingPath: path,
      totalRecordingDuration: state.totalRecordingDuration + state.recordingDuration,
      recordingDuration: Duration.zero,
    ));
  }

  @override
  Future<void> close() {
    _recordingTimer?.cancel();
    _recorderController.dispose();
    return super.close();
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
}
