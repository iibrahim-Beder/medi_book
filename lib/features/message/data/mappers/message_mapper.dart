
import 'package:medi_book/features/message/data/models/message_model.dart';
import 'package:medi_book/features/message/domain/entities/message.dart';

extension MessageModelMapper on MessageModel {
  Message toEntity() {
    return Message(
      id: id,
      senderId: senderId,
      text: text,
      timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp),
    );
  }
}

