import 'package:flutter/material.dart';
import 'package:kudster/presentation/res/colors.dart';
import 'package:kudster/presentation/res/styles.dart';

class MyCustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ColorApp.primary,
      scaffoldBackgroundColor: ColorApp.background,
      errorColor: ColorApp.error,
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorApp.primary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorApp.background,
        selectedItemColor: ColorApp.primary,
      ),
      textTheme: TextTheme(
        titleMedium: Styles.title,
        headlineMedium: Styles.headline,
        displayMedium: Styles.subHeadline,
      )
    );
  }
}