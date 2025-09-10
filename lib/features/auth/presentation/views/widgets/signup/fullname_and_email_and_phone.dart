import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/app_regex.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/widgets/custom_text_field.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';

class FullNameAndEmailAndPhone extends StatelessWidget {
  FullNameAndEmailAndPhone(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          CustomTextField(
            hintText: "Full name",
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Full name is required";
              }
            },
            controller: context.read<SignupCubit>().fullNameController,
          ),
          verticalSpace(16),
          CustomTextField(
              hintText: "Email",
              validator: (String? value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return "Please enter a valid email";
                }
              },
              controller: context.read<SignupCubit>().emailController),
          verticalSpace(16),
          CustomTextField(
            hintText: "Phone",
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Phone number is required';
              }
            },
            controller: context.read<SignupCubit>().phoneController,
            keyboardType: TextInputType.number,
          ),
          verticalSpace(16),
          Padding(
            padding: const EdgeInsets.only(left: 12),
          ),
        ],
      ),
    );
  }
}
