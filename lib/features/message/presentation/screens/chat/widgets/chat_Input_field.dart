import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/manger/chat_cubit/chat_cubit.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/bloc/chat_input_actions_bloc_selector.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({super.key});

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final TextEditingController _controller = TextEditingController();
  // final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() => _updateTypingStatus());
  }

  void _updateTypingStatus() {
    if (_controller.text.isNotEmpty) {
      context.read<ChatCubit>().updateTypingState(true);
    } else {
      context.read<ChatCubit>().updateTypingState(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(right: 7.w,),
        decoration: BoxDecoration(
          color: ColorsManager.backgroundWhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
             padding: EdgeInsets.all(0),
              icon: SvgPicture.asset(
                'assets/svgs/smile_face.svg',
                height: 20,
                width: 20,
              ),
              onPressed: () => print("Emoji pressed"),
            ),
            Expanded(
              child: TextField(
                controller: _controller,
            
                textAlignVertical: TextAlignVertical.top,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                minLines: 1,
                maxLines: null, // Optional max limit
                style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  hintText: 'Message',
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                  border: InputBorder.none,
                  isDense: true,
                  isCollapsed: false,
                ),
              ),
            ),
            const ChatInputActionsBlocSelector()
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    // _focusNode.dispose();
    super.dispose();
  }
}

class ChatInputActions extends StatelessWidget {
  const ChatInputActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.all(0),
          icon: SvgPicture.asset(
            'assets/svgs/test_chat.svg',
            height: 20,
            width: 20,
          ),
          onPressed: () => print("Emoji pressed"),
        ),
        IconButton(
          padding: EdgeInsets.all(0),
          icon: SvgPicture.asset(
            'assets/svgs/camera.svg',
            height: 20,
            width: 20,
          ),
          onPressed: () => print("Camera pressed"),
        ),
      ],
    );
  }
}
