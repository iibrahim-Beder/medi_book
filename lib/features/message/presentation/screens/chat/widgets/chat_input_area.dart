import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/bloc/chat_action_bloc_selector.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/bloc/chat_input_switcher_bloc_selector.dart';

class ChatInputArea extends StatelessWidget {
  const ChatInputArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 80,
        maxHeight: 150,
      ),
      color: ColorsManager.backgroundWhite,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.delete, color: ColorsManager.t,)),
          const ChatInputSwitcherBlocSelector(),
          horizontalSpace(16),
          const ChatActionBlocSelector(),
        ],
      ),
    );
  }
}
