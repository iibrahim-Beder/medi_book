import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/setup_error_state.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_state.dart';
import 'package:medi_book/features/auth/routes/auth_routes.dart';

class SignupBlockListener extends StatelessWidget {
  const SignupBlockListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
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
            showSuccessDialog(context);
          },
          error: (error) {
            setUpErrorState(context, error.message);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pushNamed(AuthRoutes.kLogin);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }
}
