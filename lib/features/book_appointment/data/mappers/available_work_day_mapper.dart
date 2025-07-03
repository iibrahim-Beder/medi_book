import 'package:medi_book/features/book_appointment/data/models/available_work_day_model.dart';
import 'package:medi_book/features/book_appointment/domain/entities/available_work_day.dart';

extension AvailableWorkDayMapper on AvailableWorkDayModel {
  AvailableWorkDay toEntity() {
    return AvailableWorkDay(
      day: day,
      dayOfWeek: dayOfWeek,
      isAvailable: isAvailable,
      availableSlotsCount: availableSlotsCount, 
      index: index,
    );
  }
}

extension AvailableWorkDayListMapper on List<AvailableWorkDayModel> {
  List<AvailableWorkDay> toEntityList() {
    return map((e) => e.toEntity()).toList();
  }
}
