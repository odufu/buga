import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData darkMode = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColor.primaryColor,
        onPrimary: Colors.black,
        secondary: AppColor.secondaryColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.grey.shade700));
