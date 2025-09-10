import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/errors/failures.dart';
part 'signup_state.freezed.dart';


@freezed
class SignupState<T> with _$SignupState<T>{
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = Loading;
  const factory SignupState.success(T data) = Success;
  const factory SignupState.error({required Failures failures}) = Error;

}
