import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const _fontFamily = 'Montserrat';

  static const displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const titleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static const labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: AppColors.text,
    fontFamily: _fontFamily,
  );

  static TextTheme get textTheme => const TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
  );
}
