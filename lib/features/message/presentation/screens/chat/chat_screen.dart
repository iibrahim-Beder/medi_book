import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/chat_Input_field.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/chat_screen_body.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/voice_recorder_button.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatScreenBody(),
    );
  }
}
