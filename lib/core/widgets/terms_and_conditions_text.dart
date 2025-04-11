import 'package:flutter/widgets.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyles.font12neutral60_400Weight.copyWith(fontSize: 11, height: 1.5),
          children: <TextSpan>[
      TextSpan(
          text: "By logging, you agree to our",
  ),
          TextSpan(
          text: "  Terms & Conditions ",
          style: TextStyles.font12neutral60_400Weight.copyWith(fontSize: 11,color: ColorsManager.text100)),
            TextSpan(
          text: "and",
          ),
            TextSpan(
          text: "\nPrivacyPolicy",
          style: TextStyles.font12neutral60_400Weight.copyWith(fontSize: 11,color: ColorsManager.text100)),
    ]));
  }
}
