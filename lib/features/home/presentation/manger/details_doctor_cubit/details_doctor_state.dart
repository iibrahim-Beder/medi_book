import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/errors/failures.dart';
part 'details_doctor_state.freezed.dart';

@freezed
class DetailsDoctorState with _$DetailsDoctorState {
  const factory DetailsDoctorState.initial() = _Initial;
  const factory DetailsDoctorState.loading() = Loading;
  const factory DetailsDoctorState.success() = Success;
  const factory DetailsDoctorState.error({required Failures failures}) = Error;
  
}
