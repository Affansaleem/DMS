import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.brandMain,
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.appBarBackground,
        foregroundColor: AppColors.icon,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: AppColors.buttonText, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      textTheme: AppTextStyles.textTheme.apply(bodyColor: AppColors.textPrimary, displayColor: AppColors.textPrimary),
      colorScheme: const ColorScheme.light(
        primary: AppColors.brandMain,
        secondary: AppColors.secondary,
        error: AppColors.error,
        surface: AppColors.scaffoldBackground,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonPrimary,
          foregroundColor: AppColors.buttonText,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      iconTheme: const IconThemeData(color: AppColors.icon),
    );
  }
}
