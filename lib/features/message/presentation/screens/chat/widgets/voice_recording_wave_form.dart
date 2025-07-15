import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/bloc/recording_duration_timer_bloc_selector.dart';

class VoiceRecordingWaveform extends StatelessWidget {
  const VoiceRecordingWaveform({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          height: 50, // match waveform height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorsManager.mainBlue,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () => context.read<ChatCubit>().pauseRecording(),
                  child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorsManager.backgroundWhite,
                      ),
                      child: Icon(Icons.stop, color: ColorsManager.mainBlue)),
                ),
              ),
              Flexible(
                child: Center(
                  // center child vertically and horizontally
                  child: AudioWaveforms(
                    size: Size(screenWidth - 30,
                        30), // slightly smaller than container width and height
                    recorderController:
                        context.read<ChatCubit>().recorderController,
                    enableGesture: false,
                    waveStyle: const WaveStyle(
                      waveColor: ColorsManager.backgroundWhite,
                      showMiddleLine: false,
                      extendWaveform: true,
                      spacing: 6,
                    ),
                  ),
                ),
              ),
              const RecordingDurationTimerBlocSelector()
            ],
          ),
        ),
      ),
    );
  }
}
