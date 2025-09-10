import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:medi_book/core/theming/colors.dart';

class RoamingClockToggle extends StatefulWidget {
  const RoamingClockToggle({super.key});

  @override
  _RoamingClockToggleState createState() => _RoamingClockToggleState();
}

class _RoamingClockToggleState extends State<RoamingClockToggle> {
  bool isOn = true;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 50.0,
      height: 25.0,
      toggleSize: 18.0,
      value: isOn,
      activeColor: ColorsManager.mainBlue,
      inactiveColor: ColorsManager.text40,
      onToggle: (val) {
        setState(() {
          isOn = val;
        });
      },
    );
  }
}
