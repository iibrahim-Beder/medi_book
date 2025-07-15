import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';

class RecordingDurationTimerBlocSelector extends StatelessWidget {
  const RecordingDurationTimerBlocSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ChatCubit, ChatState, Duration>(
      selector: (state) => state.totalRecordingDuration + state.recordingDuration,
      builder: (context, total) {
        final minutes = total.inMinutes.remainder(60).toString().padLeft(2, '0');
        final seconds = total.inSeconds.remainder(60).toString().padLeft(2, '0');

        return Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            '$minutes:$seconds',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
