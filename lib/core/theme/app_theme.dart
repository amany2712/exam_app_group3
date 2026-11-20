
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,

    primaryColor: AppColors.primaryColor,

    scaffoldBackgroundColor: AppColors.backgroundColor,


    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      error: AppColors.txRedColor,
      surface: AppColors.backgroundColor,
    ),

    // Text Theme
    textTheme: const TextTheme(
      headlineSmall: AppTextTheme.headline2,
      titleLarge: AppTextTheme.headline1,
      bodyLarge: AppTextTheme.bodyText1,
      bodyMedium: AppTextTheme.bodyText2,
      labelLarge: AppTextTheme.buttonText,
    ),

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: AppColors.txBlackColor,
      ),
      titleTextStyle: AppTextTheme.headline1,
    ),

    // TextFormField Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: false,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),

      floatingLabelBehavior: FloatingLabelBehavior.always,

      labelStyle: AppTextTheme.inputLabel,

      hintStyle: AppTextTheme.inputHint,

      errorStyle: AppTextTheme.errorText,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          color: AppColors.borderColor,
          width: 1,
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          color: AppColors.borderColor,
          width: 1,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          color: AppColors.primaryColor,
          width: 1.5,
        ),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          color: AppColors.txRedColor,
          width: 1,
        ),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          color: AppColors.txRedColor,
          width: 1.5,
        ),
      ),
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.txWhiteColor,
        disabledBackgroundColor: AppColors.secondaryColor,
        disabledForegroundColor: AppColors.txWhiteColor,

        minimumSize: const Size(double.infinity, 48),

        elevation: 0,

        textStyle: AppTextTheme.buttonText,

        shape: const StadiumBorder(),
      ),
    ),

    // Checkbox Theme
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      side: const BorderSide(
        color: AppColors.secondaryColor,
        width: 1.5,
      ),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primaryColor;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(
        AppColors.txWhiteColor,
      ),
    ),
  );
}
