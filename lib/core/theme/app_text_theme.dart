
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  // AppBar Title
  static const TextStyle headline1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.txBlackColor,
  );

  // Screen Titles
  static const TextStyle headline2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.txBlackColor,
  );

  // Normal Text
  static const TextStyle bodyText1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.txGreyColor,
  );

  // Secondary Text
  static const TextStyle bodyText2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.txBlackColor,
  );

  // TextFormField Label
  static const TextStyle inputLabel = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.txGreyColor,
  );

  // TextFormField Hint
  static const TextStyle inputHint = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.txLightGreyColor,
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
