
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';

class VoiceRecorderButton extends StatefulWidget {
  const VoiceRecorderButton({super.key});

  @override
  State<VoiceRecorderButton> createState() => _VoiceRecorderButtonState();
}

class _VoiceRecorderButtonState extends State<VoiceRecorderButton>
    with SingleTickerProviderStateMixin {
  bool isRecording = false;
  late AnimationController _controller;
  late Animation<double> _glowAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _glowAnimation = Tween<double>(begin: 0, end: 15).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleRecording() {
    // context.read<ChatCubit>().requestMicrophonePermission();
    context.read<ChatCubit>().startRecording();
    setState(() {
      isRecording = !isRecording;
      if (isRecording) {
        _controller.repeat(reverse: true);
        // Start recording logic here
      } else {
        _controller.stop();
        // Stop recording logic here
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleRecording,
      child: AnimatedBuilder(
        animation: _glowAnimation,
        builder: (context, child) {
          return Container(
            height: 56.h,
            width: 56.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isRecording ? ColorsManager.mainBlue : Colors.grey.shade200,
            
            ),
            child: isRecording
                ? Icon(Icons.stop, color: Colors.white)
                : Image.asset(
                    'assets/images/record_voice_icon.png',
                    height: 56.h,
                    width: 56.w,
                  ),

        
          );
        },
      ),
    );
  }
}
