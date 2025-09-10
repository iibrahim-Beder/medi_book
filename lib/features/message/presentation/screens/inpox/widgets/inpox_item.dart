import 'package:flutter/widgets.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/line.dart';
import 'package:medi_book/features/message/presentation/screens/inpox/widgets/new_message_badge.dart';

class InpoxItem extends StatelessWidget {
  const InpoxItem(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.speciality,
      required this.place,
      this.time,
      this.message,
      this.numberOfNewMessage});

  final String imagePath;
  final String name;
  final String speciality;
  final String place;
  final String? time;
  final String? message;
  final int? numberOfNewMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Image.asset(
                imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            horizontalSpace(12),
            MessageDetailsColumn(
              name: name,
              speciality: speciality,
              place: place,
              message: message,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                time == null
                    ? SizedBox.shrink()
                    : Text(
                        time!,
                        style: TextStyles.font13Text100Regular.copyWith(
                            color: ColorsManager.text80, fontSize: 10),
                      ),
                verticalSpace(30),
                numberOfNewMessage == null || numberOfNewMessage == 0
                    ? SizedBox.shrink()
                    : newMessageBadge(numberOfNewMessage!),
              ],
            )
          ],
        ),
        verticalSpace(16),
        const Line(
            boxDecoration:
                BoxDecoration(color: ColorsManager.secondarySurfaceText),
            height: 1),
      ],
    );
  }
}

class MessageDetailsColumn extends StatelessWidget {
  const MessageDetailsColumn({
    super.key,
    required this.name,
    required this.speciality,
    required this.place,
    this.time,
    this.message,
  });

  final String name;
  final String speciality;
  final String place;
  final String? time;
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyles.font14TextBodyRegular
                .copyWith(color: ColorsManager.text100),
          ),
          Text(
            '$speciality| $place',
            style: TextStyles.font13Text100Regular
                .copyWith(color: ColorsManager.text80, fontSize: 10),
          ),
          verticalSpace(8),
          message == null
              ? SizedBox.shrink()
              : Text(
                  '$message',
                  style: TextStyles.font12Neutral60Regular
                      .copyWith(color: ColorsManager.textBody),
                  maxLines: 3,
                ),
        ],
      ),
    );
  }
}
