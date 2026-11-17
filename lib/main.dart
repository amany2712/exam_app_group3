import 'package:exam_app/config/di/di.dart';
import 'package:exam_app/core/theme/app_theme.dart';
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
      title: 'Exam App',
      theme: AppTheme.lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}