import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/chat_Input_field.dart';

class ChatInputActionsBlocSelector extends StatelessWidget {
  const ChatInputActionsBlocSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ChatCubit, ChatState, Mode>(
      selector: (state) => state.mode,
      builder: (context, state) {
        if (state == Mode.initial) {
          return ChatInputActions();
        }
        return SizedBox.shrink();
      },
    );
  }
}
