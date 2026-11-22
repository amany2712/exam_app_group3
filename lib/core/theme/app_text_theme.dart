
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  // AppBar Title
  static const TextStyle headline1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.txBlackColor,
  );

  // Screen Titles
  static const TextStyle headline2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.txBlackColor,
  );

  // Normal Text
  static const TextStyle bodyText1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.txBlackColor,
  );

  // Secondary Text
  static const TextStyle bodyText2 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.txGreyColor,
  );

  // TextFormField Label
  static const TextStyle inputLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.txGreyColor,
  );

  // TextFormField Hint
  static const TextStyle inputHint = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.hintColor,
  );

  // Button Text
  static const TextStyle buttonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.txWhiteColor,
  );

  // Error Text
  static const TextStyle errorText = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.txRedColor,
  );

  // Links
  static const TextStyle linkText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.txBlueColor,
    decoration: TextDecoration.underline,
  );
}
