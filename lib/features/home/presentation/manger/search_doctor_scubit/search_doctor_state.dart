// make shure when ue use freezed to generate our code that we import the freezed_annotation
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/errors/failures.dart';
part 'search_doctor_state.freezed.dart';
@freezed
class SearchDoctorState<T> with _$SearchDoctorState<T> {
  
  const factory SearchDoctorState.initial() = _Initial;
  const factory SearchDoctorState.loading() = Loading;
  const factory SearchDoctorState.success(T data) = Success;
  const factory SearchDoctorState.empty(String message) = Empty;
  const factory SearchDoctorState.error({required Failures failures}) = Error;
}

