import 'package:exam_app/core/constants/app_strings.dart';
import 'package:exam_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
                AppStrings.forgetPasswordSubtitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Text(
                  AppStrings.forgetPasswordDescription,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                
                ),
              ),
              const SizedBox(height: 32),
              TextFormField(
                decoration: InputDecoration(
                  labelText: AppStrings.emailLabel,
                  hintText: AppStrings.emailHint,
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