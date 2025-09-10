import 'package:medi_book/features/book_appointment/data/models/doctor_time_slot_model.dart';
import 'package:medi_book/features/book_appointment/data/models/doctor_time_slot.dart';

extension DoctorTimeSlotModelMapper on DoctorTimeSlotModel {
  DoctorTimeSlot toEntity() {
    return DoctorTimeSlot(
      id: timeSlotId,
      start: startTime,
      end: endTime,
    );
  }
}

extension DoctorTimeSlotListMapper on List<DoctorTimeSlotModel> {
  List<DoctorTimeSlot> toEntityList() {
    return map((e) => e.toEntity()).toList();
  }
}
