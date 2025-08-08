import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/features/auth/domain/entities/login_entitie.dart';
import 'package:medi_book/features/auth/domain/repos/auth_repo.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;

  LoginCubit(this.authRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passWordController = TextEditingController();

  void emitLoginState(LoginEntitie loginRequestEntitie) async {
    emit(const LoginState.loading());
    final response = await authRepo.login(loginRequestEntitie);
    response.fold((error) {
      emit(LoginState.error(failures: error));
    }, (authResponseEntitie) {
      emit(LoginState.success(authResponseEntitie));
    });
  }
}
