import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account yet?",
          style: TextStyles.font12Neutral60Regular
              .copyWith(fontSize: 11, color: ColorsManager.text100),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Sign Up",
            style: TextStyles.font12Neutral60Regular
                .copyWith(fontSize: 11, color: ColorsManager.mainBlue),
          ),
        ),
      ],
    );
  }
}


//  RichText(
//       textAlign: TextAlign.center,
//         text: TextSpan(
//           style: TextStyles.font12neutral60_400Weight.copyWith(fontSize: 11, color: ColorsManager.text100),
//           children: <TextSpan>[
//       TextSpan(
//           text: "Already have an account yet?",
//   ),
//           TextSpan(
//           text: " Sign Up",
//           style: TextStyles.font12neutral60_400Weight.copyWith(color: ColorsManager.mainBlue)),
          
//     ])