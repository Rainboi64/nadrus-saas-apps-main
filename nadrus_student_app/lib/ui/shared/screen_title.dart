import 'package:flutter/material.dart';

import '../resources/colors/colors.dart';

Widget screenTitle(String text, {double fontSize = 22}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: TextStyle(
            color: DesignColors.textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w600),
      ),
    ],
  );
}
