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
    final cubit = context.read<ChatCubit>();
    return BlocSelector<ChatCubit, ChatState, Mode>(
      selector: (state) => state.mode,
      builder: (context, state) {
        if (state == Mode.initial) {
          return InkWell(
            onTap: () => cubit.toggleRecording(),
            child: Image.asset(
              'assets/images/record_voice_icon.png',
              height: 56.h,
              width: 56.w,
            ),
          );
        }
        // return const VoiceRecorderButton();
        return InkWell(
            onTap: () {
              cubit.updateMode(Mode.initial);
              cubit.stopRecording();
            },
            child: SvgPicture.asset('assets/svgs/send_message_icon.svg'));
      },
    );
  }
}
