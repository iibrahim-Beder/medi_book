import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:medi_book/features/auth/domain/entities/create_acc_by_email_entitie.dart';
import 'package:medi_book/features/auth/domain/repos/auth_repo.dart';

import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepo authRepo;
  SignupCubit(this.authRepo) : super(const SignupState.initial());

  final formKey = GlobalKey<FormState>();
  final formKeyNextScreen = GlobalKey<FormState>();

  late bool isAcceptTermsConditions = false;

  late TextEditingController passWordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  late TextEditingController confirmPasswordController =
      TextEditingController();

  void emitCreateAccountState(
      CreateAccByEmailEntitie createAccByEmailEntitie) async {
    // if (isClosed) return;

    emit(const SignupState.loading());

    final response =
        await authRepo.createAccountWithEmail(createAccByEmailEntitie);

    response.fold((error) {
      emit(SignupState.error(failures: error));
    }, (authResponseEntitie) {
      emit(SignupState.success(authResponseEntitie));
    });
  }
}
