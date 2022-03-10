import 'package:flutter/material.dart';

import '../colors.dart';

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return Colors.red;
}

final RadioThemeData lightRadioTheme = RadioThemeData(
  fillColor: MaterialStateProperty.resolveWith(getColor),
);
