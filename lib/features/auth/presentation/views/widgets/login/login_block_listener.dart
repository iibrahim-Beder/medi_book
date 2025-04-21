import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/routing/app_router.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/setup_error_state.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_state.dart';

class LoginBlockListener extends StatelessWidget {
  const LoginBlockListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, curret) =>
          curret is Loading || curret is Success || curret is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(AppRouter.kHomeScreen);
          },
          error: (error) {
            setUpErrorState(context, error.message);
            
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
