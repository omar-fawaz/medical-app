import 'package:flutter/material.dart';

import 'color_manager.dart';

abstract class AppStyles {
  static const textStyleLight14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w100,
    color: ColorManager.teal
  );

  // Colors
  static const Color primaryColor = Colors.teal;
  static const Color secondaryColor = Colors.red;
  static const Color backgroundColor = Colors.white;
  static const Color textColor = Colors.black;
  static const Color buttonTextColor = Colors.white;

  // Text Styles
  static const TextStyle titleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textColor,
  );

  static const TextStyle boldTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  // Padding
  static const EdgeInsets defaultPadding = EdgeInsets.all(16);
}




const TextStyle textStyle = TextStyle();