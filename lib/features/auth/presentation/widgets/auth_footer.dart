
import 'package:exam_app/core/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  final String message;
  final String actionText;
  final VoidCallback onPressed;

  const AuthFooter({
    super.key,
    required this.message,
    required this.actionText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: message,
              style: const TextStyle(
                color: AppColors.txBlackColor,
                fontSize: 14,
              ),
            ),
            const TextSpan(text: ' '),
            TextSpan(
              text: actionText,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
