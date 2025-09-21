import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/InputArea/chat_Input_field.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/InputArea/voice_recording_wave_form.dart';

class ChatInputSwitcherBlocSelector extends StatelessWidget {
  const ChatInputSwitcherBlocSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ChatCubit, ChatState, Mode>(
      selector: (state) => state.mode,
      builder: (context, state) {
        if (state == Mode.recording ) {
          return const VoiceRecordingWaveform();
        }
        else if (state == Mode.paused) {
          return const VoicePlaybackWaveform();
        }
  
        return const ChatInputField();
      },
    );
  }
}
