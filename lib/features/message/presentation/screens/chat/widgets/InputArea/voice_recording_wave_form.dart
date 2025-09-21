import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/bloc/recording_duration_timer_bloc_selector.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/InputArea/voice_recording_bottom_sheet_body.dart';

class VoiceRecordingWaveform extends StatelessWidget {
  const VoiceRecordingWaveform({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cubit = context.read<ChatCubit>();
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          height: 45, // match waveform height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorsManager.mainBlue,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    // context.read<ChatCubit>().updateMode(Mode.playing);
                    context.read<ChatCubit>().pauseRecording();
                    // voiceRecordingBottomSheet(context);
                  },
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
                    child: BlocBuilder<ChatCubit, ChatState>(
                  builder: (context, state) {
                    return AudioWaveforms(
                      size: Size(screenWidth - 30, 30),
                      recorderController: cubit.recorderController,
                      enableGesture: false,
                      waveStyle: const WaveStyle(
                        waveColor: Colors.white,
                        showMiddleLine: false,
                        extendWaveform: true,
                        spacing: 6,
                      ),
                    );
                    // if (state.mode == Mode.recording) {
                    //   return AudioWaveforms(
                    //     size: Size(screenWidth - 30, 30),
                    //     recorderController: cubit.recorderController,
                    //     enableGesture: false,
                    //     waveStyle: const WaveStyle(
                    //       waveColor: Colors.white,
                    //       showMiddleLine: false,
                    //       extendWaveform: true,
                    //       spacing: 6,
                    //     ),
                    //   );
                    // } else if (state.mode == Mode.playing) {
                    //   return AudioFileWaveforms(
                    //     size: Size(screenWidth - 30, 30),
                    //     playerController: cubit.playerController,
                    //     waveformType: WaveformType.fitWidth,
                    //     playerWaveStyle: const PlayerWaveStyle(
                    //       fixedWaveColor: Colors.white,
                    //       liveWaveColor: Colors.black87,
                    //     ),

                    //   );
                    // } else {
                    //   return const SizedBox.shrink();
                    // }
                  },
                )),
              ),
              const RecordingDurationTimerBlocSelector()
            ],
          ),
        ),
      ),
    );
  }
}

class VoicePlaybackWaveform extends StatelessWidget {
  const VoicePlaybackWaveform({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit =
        context.read<ChatCubit>(); 

    return Flexible(
      child: Row(
        children: [
          IconButton(
            onPressed: () => cubit.cancelRecording(),
            icon: const Icon(
              Icons.delete,
              color: ColorsManager.text70,
            ),
          ),
          Expanded(
            child: Container(
              height: 45, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorsManager.voicePausedBlueGray,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        context.read<ChatCubit>().playRecordedChunk(cubit.state.recordingPath ?? '');
                      },
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsManager.mainBlue,
                        ),
                        child: Icon(Icons.play_arrow,
                            color: ColorsManager.backgroundWhite),
                      ),
                    ),
                  ),

                
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: AudioFileWaveforms(
                        size: Size(double.infinity, 45),
                        playerController: cubit
                            .playerController, 
                        waveformType: WaveformType.values[1],
                        playerWaveStyle: const PlayerWaveStyle(
                          fixedWaveColor: Colors.white,
                          liveWaveColor: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
