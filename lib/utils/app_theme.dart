import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: AppColors.background,

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),

    textTheme: TextTheme(
      titleLarge: AppTextStyles.title,
      titleMedium: AppTextStyles.heading,
      bodyMedium: AppTextStyles.body,
      bodySmall: AppTextStyles.caption,
    ),
  );
}