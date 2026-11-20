import 'package:exam_app/core/constants/app_strings.dart';
import 'package:exam_app/core/extensions/media_query_extension.dart';
import 'package:exam_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class EmailVerificationView extends StatelessWidget {
  const EmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final otpDecoration = Theme.of(context)
    .inputDecorationTheme
    .copyWith(
  filled: true,
  fillColor: AppColors.lightBlueColor,

  contentPadding: EdgeInsets.zero,

  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide.none,
  ),

  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide.none,
  ),

  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: AppColors.primaryColor,
      width: 1.5,
    ),
  ),

  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: AppColors.txRedColor,
      width: 1,
    ),
  ),

  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: AppColors.txRedColor,
      width: 1.5,
    ),
  ),
);
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
                AppStrings.emailVerificationSubtitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Text(
                  AppStrings.emailVerificationDescription,
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                
                ),
              ),
              const SizedBox(height: 32),


             Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: List.generate(
              4,
             (index) {
             return SizedBox(
               width: context.screenWidth * 0.20,
               height: context.screenHeight * 0.08,
               child: TextFormField(
                 keyboardType: TextInputType.number,
                 textAlign: TextAlign.center,
                 maxLength: 1,

                 decoration: const InputDecoration(
                 counterText: '',
                 ).applyDefaults(otpDecoration),
               ),
              );
            },
           ),
          ),

          const SizedBox(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4,
            children: [
              Text(
                AppStrings.resendCodeQ,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
             
              Text(
                  AppStrings.resendCode,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
            ],
          )


              
            ],
          ),
        ),
      ),
    );
  }
}