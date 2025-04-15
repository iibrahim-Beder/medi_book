import 'package:flutter/widgets.dart';
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/theming/styles.dart';

class CustomOrSigninWith extends StatelessWidget {
  const CustomOrSigninWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: Container(
            height: 1,
            color: ColorsManager.neutral40,
          
          ),
        ),
        Text(" Or sign in with ",style: TextStyles.font12Neutral60Regular,),
        Expanded(
          child: Container(
            height: 1,
            
            color: ColorsManager.neutral40,
          
          ),
        ),


      ],
    );
  }
}
