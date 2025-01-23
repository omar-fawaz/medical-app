import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_manager.dart';

abstract class ThemeManager {
  static ThemeData getAppTheme() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: ColorManager.white,
      fontFamily: 'Poppins', // Add font family here
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorManager.white,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
    );
  }
}
