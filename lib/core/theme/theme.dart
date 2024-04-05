import 'package:blog_app/core/theme/app_palete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPalete.borderColor]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color, width: 3),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPalete.backgroundColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),
      focusedBorder: _border(AppPalete.gradient2),
    ),
  );
}
