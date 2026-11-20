import 'package:exam_app/core/constants/app_strings.dart';
import 'package:exam_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.forgetPasswordTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
           // Navigator.pop(context);
          },
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children:[
              Text(
                AppStrings.resetPasswordSubtitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Text(
                  AppStrings.resetPasswordDescription,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                
                ),
              ),
              const SizedBox(height: 32),
              TextFormField(
                decoration: InputDecoration(
                  labelText: AppStrings.newPasswordLabel,
                  hintText: AppStrings.newPasswordHint,
                ),
              ),
              const SizedBox(height: 24),

              TextFormField(
                decoration: InputDecoration(
                  labelText: AppStrings.confirmNewPasswordLabel,
                  hintText: AppStrings.confirmNewPasswordHint,
                ),
              ),

              const SizedBox(height: 48),
              ElevatedButton(
                onPressed: () {
                  // Handle continue button press
                },
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                 backgroundColor: WidgetStatePropertyAll(
                  AppColors.secondaryColor,
                  ),
                 ),
                child: Text(AppStrings.forgetPasswordButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}