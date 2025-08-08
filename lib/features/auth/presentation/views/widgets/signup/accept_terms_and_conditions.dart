import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_book/core/helpers/spacing.dart';
import 'package:medi_book/core/theming/styles.dart';
import 'package:medi_book/core/widgets/custom_checkbox.dart';
import 'package:medi_book/features/auth/presentation/manger/signup_cubit/signup_cubit.dart';

class AcceptTermsAndConditions extends StatefulWidget {
  AcceptTermsAndConditions({super.key});

  @override
  State<AcceptTermsAndConditions> createState() =>
      _AcceptTermsAndConditionsState();
}

class _AcceptTermsAndConditionsState extends State<AcceptTermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(
          isChecked: context.read<SignupCubit>().isAcceptTermsConditions,
          onTap: () {
            context.read<SignupCubit>().isAcceptTermsConditions =
                !context.read<SignupCubit>().isAcceptTermsConditions;

            setState(() {});
          },
        ),
        horizontalSpace(20),
        RichText(
          text: TextSpan(
            text: 'By creating an account, you agree to ',
            style: TextStyles.font12Neutral60Regular,
            children: <TextSpan>[
              TextSpan(
                text: 'our terms\n and conditions',
                style: TextStyle(
                    height: 1.5,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
