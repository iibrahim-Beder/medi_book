import 'dart:io';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/bloc/recording_duration_timer_bloc_selector.dart';

class PreviewLastChunkPlayer extends StatefulWidget {
  final String path;
  const PreviewLastChunkPlayer({super.key, required this.path});

  @override
  State<PreviewLastChunkPlayer> createState() => _PreviewLastChunkPlayerState();
}

class _PreviewLastChunkPlayerState extends State<PreviewLastChunkPlayer> {
  late final PlayerController _playerController;

  @override
  void initState() {
    super.initState();
    _playerController = PlayerController();
    _prepareWaveform();
  }

  Future<void> _prepareWaveform() async {
    if (await File(widget.path).exists()) {
      await _playerController.extractWaveformData(
        path: widget.path,
      );
    } else {
      print("❌ File does not exist: ${widget.path}");
    }
  }

  @override
  void dispose() {
    _playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChatCubit>();
    return Expanded(
      child: Container(
        height: 50, // match waveform height
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(5.r),
            topRight: Radius.circular(5.r),
          ),
          color: ColorsManager.voicePausedBlueGray,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  // cubit.playRecordedChunk(cubit.state.recordingPath?? '');
                  print(cubit.state.mode);
                  // cubit.toggleRecording();
                },
                child: SvgPicture.asset(
                  'assets/svgs/play.svg',
                  color: Colors.white,
                ),
              ),
            ),
            Flexible(
              child: Center(
                // center child vertically and horizontally
                child: AudioFileWaveforms(
                  size: const Size(double.infinity, 50),
                  playerController: _playerController,
                  waveformType: WaveformType.fitWidth,
                  playerWaveStyle: const PlayerWaveStyle(
                    fixedWaveColor: Colors.white,
                    liveWaveColor: Colors.white,
                  ),
                ),
              ),
            ),
            const RecordingDurationTimerBlocSelector()
          ],
        ),
      ),
    );
  }
}
