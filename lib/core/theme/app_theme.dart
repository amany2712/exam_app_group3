import 'package:exam_app/core/theme/app_colors.dart';
import 'package:exam_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFF02369C),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      titleTextStyle:AppTextTheme.headline1 
    ),

  );
}