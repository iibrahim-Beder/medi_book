import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/app_regex.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/custom_text_field.dart';
import 'package:medi_book/features/auth/presentation/manger/login_cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  bool isObscureText = true;

  @override
  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            CustomTextField(
              hintText: "Email",
              validator: (String? value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return "Please enter a valid email";
                }
              },
              controller: context.read<LoginCubit>().emailController,
            ),
            verticalSpace(16),
            CustomTextField(
              hintText: "Password",
              suffixIcon: GestureDetector(
                onTap: () {
                  isObscureText = !isObscureText;
                  setState(() {});
                },
                child: isObscureText
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              ),
              obscureText: isObscureText,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid passWord";
                }
              },
             controller: context.read<LoginCubit>().passWordController,
            ),
          ],
        ));
  }


}
