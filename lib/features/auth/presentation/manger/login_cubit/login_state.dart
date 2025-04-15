import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/errors/failures.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(T data) = Success;
  const factory LoginState.error({required Failures failures}) = Error;
}
