import 'package:flutter/material.dart';
import 'text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
    ),
  );
}
