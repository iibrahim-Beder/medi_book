import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/features/message/presentation/screens/chat/widgets/preview_last_chunk_player.dart';

class VoiceRecordingBottomSheetBody extends StatelessWidget {
  const VoiceRecordingBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.backgroundWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
      height: MediaQuery.of(context).size.height * 0.30,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 12),
        child: Column(children: [
          Text('You can review or resume your voice message.',
              style: TextStyles.font12Text80Medium
                  .copyWith(color: ColorsManager.text100)),
          verticalSpace(22),
          const LastRecordingPreviewWithResumeMic(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      size: 30,
                    ),
                    color: Colors.red[600],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.refresh,
                      size: 30,
                    ),
                    color: ColorsManager.mainBlue,
                  ),
                ],
              ),
              SvgPicture.asset('assets/svgs/send_message_icon.svg'),
            ],
          )
        ]),
      ),
    );
  }
}

class LastRecordingPreviewWithResumeMic extends StatelessWidget {
  const LastRecordingPreviewWithResumeMic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PreviewLastChunkPlayer(
            path:
                '/data/user/0/com.example.medi_book/cache/15-07-25-06-51-205704326372119746007.m4a'),
        horizontalSpace(3),
        Container(
            height: 50,
            width: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.r),
                bottomLeft: Radius.circular(5.r),
                bottomRight: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
              color: ColorsManager.mainBlue,
            ),
            child: Center(
              child: Image.asset(
                'assets/images/microphone.png',
                color: ColorsManager.backgroundWhite,
                height: 24,
                width: 24,
              ),
            ))
      ],
    );
  }
}
