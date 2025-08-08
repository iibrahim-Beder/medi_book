import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_book/core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/logo_low_opasity.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4])),
          child: Image.asset("assets/images/doctor_Image.png"),
        ),
        Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Text(
              "Best Doctor\nAppointment App",
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold,
            ))
      ],
    );
  }
}
