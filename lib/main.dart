import 'package:exam_app/config/di/di.dart';
import 'package:exam_app/core/theme/app_theme.dart';
import 'package:exam_app/features/auth/presentation/auth_screens/forget_password_screens/email_verification_view.dart';
import 'package:exam_app/features/auth/presentation/auth_screens/forget_password_screens/forget_password_view.dart';
import 'package:exam_app/features/auth/presentation/auth_screens/forget_password_screens/reset_password_view.dart';
import 'package:flutter/material.dart';

void main (){
  configureDependencies();
  runApp(const ExamApp());
}

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exam App',
      theme: AppTheme.lightTheme,
      home:  ResetPasswordView(),
    );
  }
}