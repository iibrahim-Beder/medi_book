import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';

class ChatActionBlocSelector extends StatelessWidget {
  const ChatActionBlocSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ChatCubit, ChatState, bool>(
      selector: (state) => state.isTyping || state.isRecording,
      builder: (context, state) {
        if (state) {
          return InkWell(
              onTap: () {
                // context.read<ChatCubit>().updateRecordingState(false);
                context.read<ChatCubit>().updateTypingState(false);
                context.read<ChatCubit>().stopRecording();
              },
              child: SvgPicture.asset('assets/svgs/send_message_icon.svg'));
        }
        // return const VoiceRecorderButton();
        return InkWell(
          onTap: () => context.read<ChatCubit>().startRecording(),
          child: Image.asset(
            'assets/images/record_voice_icon.png',
            height: 56.h,
            width: 56.w,
          ),
        );
      },
    );
  }
}
