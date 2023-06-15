import 'package:flutter/material.dart';
import 'package:teleport_test_app/core/constants/app_colors.dart';

class AppThemes {
  static final light = ThemeData(
    brightness: Brightness.light,
    // colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blue),
    colorSchemeSeed: AppColors.blue,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blue,
      unselectedItemColor: AppColors.grey,
    ),
    badgeTheme: const BadgeThemeData(backgroundColor: AppColors.red, largeSize: 18, textStyle: TextStyle(fontSize: 12)),
    useMaterial3: true,
  );
}
