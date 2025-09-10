// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:medi_book/core/helpers/app_regex.dart';
// import 'package:medi_book/core/helpers/spacing.dart';
// import 'package:medi_book/core/widgets/custom_text_field.dart';
// import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';
// import 'package:medi_book/features/auth/presentation/views/widgets/signup/password_Validation.dart';

// class PasswordAndConfirmPassword extends StatefulWidget {
//   const PasswordAndConfirmPassword({super.key});

//   @override
//   State<PasswordAndConfirmPassword> createState() =>
//       _PasswordAndConfirmPasswordState();
// }

// class _PasswordAndConfirmPasswordState
//     extends State<PasswordAndConfirmPassword> {
//   late bool isObscurePassword = true;
//   late bool isObscureConfirmPassword = true;

//   late TextEditingController passwordController;
//   late TextEditingController confirmPasswordController =
//       TextEditingController();

//   bool hasLowercase = false;
//   bool hasUppercase = false;
//   bool hasSpecialCharacters = false;
//   bool hasNumber = false;
//   bool hasMinLength = false;

//   @override
//   void initState() {
//     super.initState();
//     passwordController = context.read<SignupCubit>().passWordController;
//     setupPasswordControllerListener();
//   }

//   void setupPasswordControllerListener() {
//     passwordController.addListener(() {
//       setState(() {
//         hasLowercase = AppRegex.hasLowerCase(passwordController.text);
//         hasUppercase = AppRegex.hasUpperCase(passwordController.text);
//         hasSpecialCharacters =
//             AppRegex.hasSpecialCharacter(passwordController.text);
//         hasNumber = AppRegex.hasNumber(passwordController.text);
//         hasMinLength = AppRegex.hasMinLength(passwordController.text);
//       });
//     });
//   }

//   bool isPasswordValid() {
//     return hasLowercase &&
//         hasUppercase &&
//         hasSpecialCharacters &&
//         hasNumber &&
//         hasMinLength;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: context.read<SignupCubit>().formKeyNextScreen,
//       child: Column(
//         children: [
//           CustomTextField(
//               hintText: "Password",
//               validator: (String? value) {
//                 if (value == null || value.isEmpty || !isPasswordValid()) {
//                   return "Please enter a valid password";
//                 }
//               },
//               suffixIcon: GestureDetector(
//                 onTap: () {
//                   isObscurePassword = !isObscurePassword;
//                   setState(() {});
//                 },
//                 child: isObscurePassword
//                     ? Icon(Icons.visibility_off)
//                     : Icon(Icons.visibility),
//               ),
//               obscureText: isObscurePassword,
//               controller: context.read<SignupCubit>().passWordController),
//           verticalSpace(16),
//           CustomTextField(
//               hintText: "Password Confirmation",
//               validator: (String? value) {
//                 if (value != passwordController.text) {
//                   return 'Password and confirm password do not match';
//                 }
//               },
//               suffixIcon: GestureDetector(
//                 onTap: () {
//                   isObscureConfirmPassword = !isObscureConfirmPassword;
//                   setState(() {});
//                 },
//                 child: isObscurePassword
//                     ? Icon(Icons.visibility_off)
//                     : Icon(Icons.visibility),
//               ),
//               obscureText: isObscureConfirmPassword,
//               controller: confirmPasswordController),
//           verticalSpace(16),
//           Padding(
//             padding: const EdgeInsets.only(left: 12),
//             child: PasswordValidation(
//               hasLowercase: hasLowercase,
//               hasUppercase: hasUppercase,
//               hasSpecialCharacters: hasSpecialCharacters,
//               hasNumber: hasNumber,
//               hasMinLength: hasMinLength,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//   // i will come bake here

//   // @override
//   // void dispose() {
//   //   passwordController.dispose();
//   //   super.dispose();
//   // }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/app_regex.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/custom_text_field.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';
import 'package:medi_book/features/auth/presentation/views/widgets/signup/password_Validation.dart';

class PasswordAndConfirmPassword extends StatefulWidget {
  const PasswordAndConfirmPassword({super.key});

  @override
  State<PasswordAndConfirmPassword> createState() =>
      _PasswordAndConfirmPasswordState();
}

class _PasswordAndConfirmPasswordState
    extends State<PasswordAndConfirmPassword> {
  
  late bool isObscurePassword = true;
  late bool isObscureConfirmPassword = true;

  late TextEditingController passwordController;

  late bool hasLowercase;
  late bool hasUppercase;
  late bool hasSpecialCharacters;
  late bool hasNumber;
  late bool hasMinLength;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passWordController;
    setupPasswordControllerListener();
    _refreshCaseState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(_updatePasswordValidation);
  }

  void _updatePasswordValidation() {
    if (!mounted) return;

    setState(() {
      _refreshCaseState();
    });
  }

  void _refreshCaseState() {
    hasLowercase = AppRegex.hasLowerCase(passwordController.text);
    hasUppercase = AppRegex.hasUpperCase(passwordController.text);
    hasSpecialCharacters =
        AppRegex.hasSpecialCharacter(passwordController.text);
    hasNumber = AppRegex.hasNumber(passwordController.text);
    hasMinLength = AppRegex.hasMinLength(passwordController.text);
  }

  bool isPasswordValid() {
    return hasLowercase &&
        hasUppercase &&
        hasSpecialCharacters &&
        hasNumber &&
        hasMinLength;
  }

  @override
  void dispose() {
    passwordController.removeListener(_updatePasswordValidation);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKeyNextScreen,
      child: Column(
        children: [
          CustomTextField(
            hintText: "Password",
            validator: (String? value) {
              if (value == null || value.isEmpty || !isPasswordValid()) {
                return "Please enter a valid password";
              }
              return null;
            },
            suffixIcon: GestureDetector(
              onTap: () {
                if (!mounted) return;
                setState(() {
                  isObscurePassword = !isObscurePassword;
                });
              },
              child: Icon(
                isObscurePassword ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            obscureText: isObscurePassword,
            controller: context.read<SignupCubit>().passWordController,
          ),
          verticalSpace(16),
          CustomTextField(
            hintText: "Password Confirmation",
            validator: (String? value) {
              if(value == null || value.isEmpty){
                return "Please enter a valid confirm password";
              }
              if (value != passwordController.text) {
                return 'Password and confirm password do not match';
              }
              return null;
            },
            suffixIcon: GestureDetector(
              onTap: () {
                if (!mounted) return;
                setState(() {
                  isObscureConfirmPassword = !isObscureConfirmPassword;
                });
              },
              child: Icon(
                isObscureConfirmPassword
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            obscureText: isObscureConfirmPassword,
            controller: context.read<SignupCubit>().confirmPasswordController,
          ),
          verticalSpace(16),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: PasswordValidation(
              hasLowercase: hasLowercase,
              hasUppercase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength,
            ),
          ),
        ],
      ),
    );
  }
}
