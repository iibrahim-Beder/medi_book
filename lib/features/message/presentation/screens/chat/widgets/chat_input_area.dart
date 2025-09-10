import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/bloc/chat_action_bloc_selector.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/bloc/chat_input_switcher_bloc_selector.dart';

class ChatInputArea extends StatelessWidget {
  const ChatInputArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ChatCubit>().state;
    bool isHasTrash = state.mode == Mode.paused || state.mode == Mode.recording;
    return Container(
      constraints: BoxConstraints(
        minHeight: 80,
        maxHeight: 150,
      ),
      color: ColorsManager.backgroundWhite,
      padding: EdgeInsets.only(top: 16, bottom: 16, right: 16, left: isHasTrash ? 0 : 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (isHasTrash)
            IconButton(
              onPressed: () => context.read<ChatCubit>().stopRecording(),
              icon: const Icon(
                Icons.delete,
                color: ColorsManager.text70,
              ),
            ),
          const ChatInputSwitcherBlocSelector(),
          horizontalSpace(16),
          const ChatActionBlocSelector(),
        ],
      ),
    );
  }
}
